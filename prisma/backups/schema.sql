


SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;




ALTER SCHEMA "public" OWNER TO "postgres";


COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE TYPE "public"."order_status" AS ENUM (
    'In Process',
    'Delivered',
    'Cancelled'
);


ALTER TYPE "public"."order_status" OWNER TO "postgres";


CREATE TYPE "public"."order_type_enum" AS ENUM (
    'nikkah',
    'mehndi',
    'barat',
    'wallima',
    'other'
);


ALTER TYPE "public"."order_type_enum" OWNER TO "postgres";


CREATE TYPE "public"."user_role" AS ENUM (
    'admin',
    'staff'
);


ALTER TYPE "public"."user_role" OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."calculate_general_ledger_balance"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
  previous_balance DECIMAL(12, 2);
BEGIN
  -- Get the last balance in chronological order (oldest to newest)
  -- An entry is "before" this one if:
  -- 1. entry_date is earlier, OR
  -- 2. entry_date is same but created_at is earlier
  SELECT balance INTO previous_balance
  FROM public.general_ledger
  WHERE (entry_date < NEW.entry_date) 
     OR (entry_date = NEW.entry_date AND created_at < NEW.created_at)
  ORDER BY entry_date DESC, created_at DESC
  LIMIT 1;

  -- If no previous balance, start with 0
  IF previous_balance IS NULL THEN
    previous_balance := 0;
  END IF;

  -- Calculate new balance: balance = previous_balance + debit - credit
  IF NEW.debit IS NOT NULL THEN
    NEW.balance := previous_balance + NEW.debit;
  ELSE
    NEW.balance := previous_balance - NEW.credit;
  END IF;

  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."calculate_general_ledger_balance"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."calculate_order_balance"("order_uuid" "uuid") RETURNS numeric
    LANGUAGE "plpgsql"
    AS $$
DECLARE
  v_total_amount DECIMAL(10,2);
  v_advance_paid DECIMAL(10,2);
  v_additional_payments DECIMAL(10,2);
BEGIN
  -- Get order details
  SELECT total_amount, COALESCE(advance_paid, 0)
  INTO v_total_amount, v_advance_paid
  FROM public.orders
  WHERE id = order_uuid;

  -- Sum up all additional payments
  SELECT COALESCE(SUM(amount), 0)
  INTO v_additional_payments
  FROM public.payments
  WHERE order_id = order_uuid;

  -- Return the real balance
  RETURN v_total_amount - v_advance_paid - v_additional_payments;
END;
$$;


ALTER FUNCTION "public"."calculate_order_balance"("order_uuid" "uuid") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."create_vendor_sub_ledger_entry"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
  previous_vendor_balance DECIMAL(12, 2);
  new_vendor_balance DECIMAL(12, 2);
BEGIN
  -- Only create sub-ledger entry if vendor_id is specified
  IF NEW.vendor_id IS NOT NULL THEN
    -- Get the last balance for this vendor
    SELECT balance INTO previous_vendor_balance
    FROM public.vendor_ledger
    WHERE vendor_id = NEW.vendor_id
    ORDER BY entry_date DESC, created_at DESC
    LIMIT 1;

    -- If no previous balance, start with 0
    IF previous_vendor_balance IS NULL THEN
      previous_vendor_balance := 0;
    END IF;

    -- Create inverse entry in vendor sub-ledger
    -- Credit in general ledger = Debit in vendor sub-ledger (we owe the vendor)
    -- Debit in general ledger = Credit in vendor sub-ledger (vendor pays us or we reduce debt)
    IF NEW.credit IS NOT NULL THEN
      -- Credit in general ledger means we owe vendor (debit in their sub-ledger)
      new_vendor_balance := previous_vendor_balance + NEW.credit;
      
      INSERT INTO public.vendor_ledger (
        vendor_id,
        general_ledger_id,
        entry_date,
        particulars,
        debit,
        credit,
        balance,
        notes
      ) VALUES (
        NEW.vendor_id,
        NEW.id,
        NEW.entry_date,
        NEW.particulars,
        NEW.credit,  -- Debit in sub-ledger
        NULL,
        new_vendor_balance,
        NEW.notes
      );
    ELSE
      -- Debit in general ledger means vendor debt reduces (credit in their sub-ledger)
      new_vendor_balance := previous_vendor_balance - NEW.debit;
      
      INSERT INTO public.vendor_ledger (
        vendor_id,
        general_ledger_id,
        entry_date,
        particulars,
        debit,
        credit,
        balance,
        notes
      ) VALUES (
        NEW.vendor_id,
        NEW.id,
        NEW.entry_date,
        NEW.particulars,
        NULL,
        NEW.debit,  -- Credit in sub-ledger
        new_vendor_balance,
        NEW.notes
      );
    END IF;
  END IF;

  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."create_vendor_sub_ledger_entry"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."handle_new_user"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
BEGIN
  INSERT INTO public.users (id, email, name)
  VALUES (NEW.id, NEW.email, NEW.raw_user_meta_data->>'full_name');
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."handle_new_user"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."increment_counter"("counter_id" integer) RETURNS integer
    LANGUAGE "plpgsql"
    AS $$
DECLARE
  new_value INTEGER;
BEGIN
  UPDATE counters 
  SET value = value + 1 
  WHERE id = counter_id 
  RETURNING value INTO new_value;
  
  RETURN new_value;
END;
$$;


ALTER FUNCTION "public"."increment_counter"("counter_id" integer) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."prevent_advance_paid_modification"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  -- Allow setting advance_paid during INSERT
  IF (TG_OP = 'INSERT') THEN
    RETURN NEW;
  END IF;
  
  -- On UPDATE: prevent changing advance_paid if it was already set
  IF (TG_OP = 'UPDATE') THEN
    IF (OLD.advance_paid IS NOT NULL AND NEW.advance_paid IS NOT NULL) THEN
      IF (OLD.advance_paid != NEW.advance_paid) THEN
        RAISE EXCEPTION 'Cannot modify advance_paid after order creation. Old value: %, New value: %', 
          OLD.advance_paid, NEW.advance_paid;
      END IF;
    END IF;
  END IF;
  
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."prevent_advance_paid_modification"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."recalc_balance_after_delete"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  -- Recalculate balances only for entries after the deleted one
  PERFORM recalculate_balances_after_date(OLD.entry_date, OLD.created_at);
  RETURN OLD;
END;
$$;


ALTER FUNCTION "public"."recalc_balance_after_delete"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."recalc_balance_after_update"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  -- Only recalculate if the amounts changed
  IF OLD.debit IS DISTINCT FROM NEW.debit OR OLD.credit IS DISTINCT FROM NEW.credit THEN
    -- Recalculate from the earlier of old/new dates
    IF OLD.entry_date <= NEW.entry_date THEN
      PERFORM recalculate_balances_after_date(OLD.entry_date, OLD.created_at);
    ELSE
      PERFORM recalculate_balances_after_date(NEW.entry_date, NEW.created_at);
    END IF;
  END IF;
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."recalc_balance_after_update"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."recalculate_all_balances"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  -- Recalculate all balances in chronological order
  WITH ordered_entries AS (
    SELECT 
      id,
      entry_date,
      created_at,
      debit,
      credit,
      ROW_NUMBER() OVER (ORDER BY entry_date ASC, created_at ASC) as row_num
    FROM general_ledger
  ),
  running_balance AS (
    SELECT 
      id,
      SUM(COALESCE(debit, 0) - COALESCE(credit, 0)) 
        OVER (ORDER BY row_num) as new_balance
    FROM ordered_entries
  )
  UPDATE general_ledger gl
  SET balance = rb.new_balance
  FROM running_balance rb
  WHERE gl.id = rb.id;
  
  RETURN NULL;
END;
$$;


ALTER FUNCTION "public"."recalculate_all_balances"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."recalculate_balances_after_date"("from_date" timestamp with time zone, "from_created_at" timestamp with time zone) RETURNS "void"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
  previous_balance DECIMAL(12, 2);
BEGIN
  -- Get the balance just before the affected entry
  SELECT COALESCE(balance, 0) INTO previous_balance
  FROM general_ledger
  WHERE (entry_date < from_date) 
     OR (entry_date = from_date AND created_at < from_created_at)
  ORDER BY entry_date DESC, created_at DESC
  LIMIT 1;

  IF previous_balance IS NULL THEN
    previous_balance := 0;
  END IF;

  -- Update all balances from the affected date forward
  WITH ordered_entries AS (
    SELECT 
      id, 
      entry_date, 
      created_at, 
      debit, 
      credit,
      ROW_NUMBER() OVER (ORDER BY entry_date ASC, created_at ASC) as row_num
    FROM general_ledger
    WHERE (entry_date > from_date) 
       OR (entry_date = from_date AND created_at >= from_created_at)
  ),
  running_balance AS (
    SELECT 
      id,
      previous_balance + SUM(COALESCE(debit, 0) - COALESCE(credit, 0)) 
        OVER (ORDER BY row_num) as new_balance
    FROM ordered_entries
  )
  UPDATE general_ledger gl
  SET balance = rb.new_balance
  FROM running_balance rb
  WHERE gl.id = rb.id;
END;
$$;


ALTER FUNCTION "public"."recalculate_balances_after_date"("from_date" timestamp with time zone, "from_created_at" timestamp with time zone) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."recalculate_general_ledger_balances"() RETURNS "void"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
  entry_record RECORD;
  running_balance DECIMAL(12, 2) := 0;
BEGIN
  -- Process all entries in chronological order
  FOR entry_record IN 
    SELECT id, debit, credit
    FROM public.general_ledger
    ORDER BY entry_date ASC, created_at ASC
  LOOP
    -- Calculate new balance
    IF entry_record.debit IS NOT NULL THEN
      running_balance := running_balance + entry_record.debit;
    ELSE
      running_balance := running_balance - entry_record.credit;
    END IF;
    
    -- Update the entry's balance
    UPDATE public.general_ledger
    SET balance = running_balance
    WHERE id = entry_record.id;
  END LOOP;
  
  RAISE NOTICE 'Successfully recalculated all ledger balances';
END;
$$;


ALTER FUNCTION "public"."recalculate_general_ledger_balances"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."update_updated_at_column"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."update_updated_at_column"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."update_vendor_timestamp"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."update_vendor_timestamp"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."customers" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" character varying(100) NOT NULL,
    "phone" character varying(20) NOT NULL,
    "address" "text",
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."customers" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."general_ledger" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "entry_date" "date" DEFAULT CURRENT_DATE NOT NULL,
    "particulars" "text" NOT NULL,
    "debit" numeric(12,2),
    "credit" numeric(12,2),
    "balance" numeric(12,2) DEFAULT 0 NOT NULL,
    "entry_type" "text" NOT NULL,
    "notes" "text",
    "order_id" "uuid",
    "vendor_id" "uuid",
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"(),
    "tag_id" "uuid",
    CONSTRAINT "chk_debit_or_credit" CHECK (((("debit" IS NOT NULL) AND ("credit" IS NULL)) OR (("credit" IS NOT NULL) AND ("debit" IS NULL)))),
    CONSTRAINT "general_ledger_entry_type_check" CHECK (("entry_type" = ANY (ARRAY['opening_balance'::"text", 'order_payment'::"text", 'vendor_payment'::"text", 'miscellaneous'::"text"])))
);


ALTER TABLE "public"."general_ledger" OWNER TO "postgres";


COMMENT ON COLUMN "public"."general_ledger"."tag_id" IS 'Optional tag for more detailed categorization of vendor expenses';



CREATE TABLE IF NOT EXISTS "public"."measurements" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "customer_id" "uuid" NOT NULL,
    "name" character varying(255) DEFAULT 'Default Measurements'::character varying NOT NULL,
    "chest" numeric(5,2),
    "waist" numeric(5,2),
    "hip" numeric(5,2),
    "neck" numeric(5,2),
    "wrist" numeric(5,2),
    "thigh" numeric(5,2),
    "knee" numeric(5,2),
    "is_default" boolean DEFAULT false,
    "notes" "text",
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "sleeves" numeric(5,2),
    "biceps" numeric(5,2),
    "shoulder" numeric(5,2),
    "cross_back" numeric(5,2),
    "open_coat_length" numeric(5,2),
    "coat_length" numeric(5,2),
    "sherwani_length" numeric(5,2),
    "kameez_length" numeric(5,2),
    "three_piece_waistcoat_length" numeric(5,2),
    "waistcoat_length" numeric(5,2),
    "pent_waist" numeric(5,2),
    "pent_length" numeric(5,2),
    "bottom" numeric(5,2),
    "shoe_size" numeric(5,2),
    "turban_size" numeric(5,2)
);


ALTER TABLE "public"."measurements" OWNER TO "postgres";


COMMENT ON TABLE "public"."measurements" IS 'Customer measurements for tailoring with proper field names';



COMMENT ON COLUMN "public"."measurements"."sleeves" IS 'Sleeve length measurement';



COMMENT ON COLUMN "public"."measurements"."biceps" IS 'Biceps circumference measurement';



COMMENT ON COLUMN "public"."measurements"."shoulder" IS 'Shoulder width measurement';



COMMENT ON COLUMN "public"."measurements"."cross_back" IS 'Cross back width measurement';



COMMENT ON COLUMN "public"."measurements"."open_coat_length" IS 'Open coat length measurement';



COMMENT ON COLUMN "public"."measurements"."coat_length" IS 'Coat length measurement';



COMMENT ON COLUMN "public"."measurements"."sherwani_length" IS 'Sherwani length measurement';



COMMENT ON COLUMN "public"."measurements"."kameez_length" IS 'Kameez length measurement';



COMMENT ON COLUMN "public"."measurements"."three_piece_waistcoat_length" IS 'Three piece waistcoat length measurement';



COMMENT ON COLUMN "public"."measurements"."waistcoat_length" IS 'Waistcoat length measurement';



COMMENT ON COLUMN "public"."measurements"."pent_waist" IS 'Pant waist measurement';



COMMENT ON COLUMN "public"."measurements"."pent_length" IS 'Pant length measurement';



COMMENT ON COLUMN "public"."measurements"."bottom" IS 'Bottom hem measurement';



COMMENT ON COLUMN "public"."measurements"."shoe_size" IS 'Shoe size';



COMMENT ON COLUMN "public"."measurements"."turban_size" IS 'Turban size measurement';



CREATE TABLE IF NOT EXISTS "public"."order_items" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "order_id" "uuid" NOT NULL,
    "order_type" "public"."order_type_enum" NOT NULL,
    "description" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."order_items" OWNER TO "postgres";


COMMENT ON TABLE "public"."order_items" IS 'Stores individual order items with types (nikkah, mehndi, barat, wallima, other) and descriptions';



COMMENT ON COLUMN "public"."order_items"."order_type" IS 'Type of order item - each order can have max one of each type';



COMMENT ON COLUMN "public"."order_items"."description" IS 'Detailed description of the order item, preserving formatting';



CREATE TABLE IF NOT EXISTS "public"."orders" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "order_number" character varying(20) NOT NULL,
    "customer_id" "uuid" NOT NULL,
    "booking_date" "date" NOT NULL,
    "delivery_date" "date" NOT NULL,
    "comments" "text",
    "fitting_preferences" "text",
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"(),
    "total_amount" numeric(10,2),
    "advance_paid" numeric(10,2),
    "balance" numeric(10,2),
    "payment_method" character varying(20),
    "measurement_id" "uuid",
    "status" "public"."order_status" DEFAULT 'In Process'::"public"."order_status" NOT NULL,
    CONSTRAINT "check_advance_not_exceed_total" CHECK ((("advance_paid" IS NULL) OR ("total_amount" IS NULL) OR ("advance_paid" <= "total_amount"))),
    CONSTRAINT "orders_payment_method_check" CHECK ((("payment_method")::"text" = ANY (ARRAY[('cash'::character varying)::"text", ('bank'::character varying)::"text", ('other'::character varying)::"text"])))
);


ALTER TABLE "public"."orders" OWNER TO "postgres";


COMMENT ON COLUMN "public"."orders"."advance_paid" IS 'Initial advance payment made at order creation time. This value should NEVER be modified after order creation. Additional payments go to the payments table.';



COMMENT ON COLUMN "public"."orders"."balance" IS 'Calculated balance at order creation: total_amount - advance_paid. This is a snapshot and may become stale as payments are added.';



CREATE OR REPLACE VIEW "public"."orders_with_payment_status" AS
SELECT
    NULL::"uuid" AS "id",
    NULL::character varying(20) AS "order_number",
    NULL::"uuid" AS "customer_id",
    NULL::"date" AS "booking_date",
    NULL::"date" AS "delivery_date",
    NULL::"text" AS "comments",
    NULL::"text" AS "fitting_preferences",
    NULL::timestamp with time zone AS "created_at",
    NULL::timestamp with time zone AS "updated_at",
    NULL::numeric(10,2) AS "total_amount",
    NULL::numeric(10,2) AS "advance_paid",
    NULL::numeric(10,2) AS "balance",
    NULL::character varying(20) AS "payment_method",
    NULL::"uuid" AS "measurement_id",
    NULL::"public"."order_status" AS "status",
    NULL::numeric AS "initial_advance",
    NULL::numeric AS "additional_payments",
    NULL::numeric AS "total_paid",
    NULL::numeric AS "current_balance",
    NULL::bigint AS "payment_count";


ALTER VIEW "public"."orders_with_payment_status" OWNER TO "postgres";


COMMENT ON VIEW "public"."orders_with_payment_status" IS 'Real-time view of orders with calculated payment status. Use this instead of the stale balance column in orders table.';



CREATE TABLE IF NOT EXISTS "public"."payments" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "order_id" "uuid" NOT NULL,
    "customer_id" "uuid" NOT NULL,
    "amount" numeric(10,2) NOT NULL,
    "payment_method" character varying(20) NOT NULL,
    "payment_date" "date" DEFAULT CURRENT_DATE NOT NULL,
    "transaction_reference" character varying(100),
    "notes" "text",
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "recorded_by" "uuid",
    CONSTRAINT "payments_amount_check" CHECK (("amount" > (0)::numeric)),
    CONSTRAINT "payments_payment_method_check" CHECK ((("payment_method")::"text" = ANY (ARRAY[('cash'::character varying)::"text", ('bank'::character varying)::"text", ('card'::character varying)::"text", ('online'::character varying)::"text", ('other'::character varying)::"text"])))
);


ALTER TABLE "public"."payments" OWNER TO "postgres";


COMMENT ON TABLE "public"."payments" IS 'Tracks all payment transactions for orders, allowing multiple payments per order';



COMMENT ON COLUMN "public"."payments"."amount" IS 'Payment amount in currency (positive values only)';



COMMENT ON COLUMN "public"."payments"."payment_method" IS 'Method used for payment: cash, bank, card, online, other';



COMMENT ON COLUMN "public"."payments"."transaction_reference" IS 'Reference number for bank/card transactions';



COMMENT ON COLUMN "public"."payments"."recorded_by" IS 'User who recorded this payment entry';



CREATE TABLE IF NOT EXISTS "public"."users" (
    "id" "uuid" NOT NULL,
    "email" character varying(255) NOT NULL,
    "name" character varying(100),
    "role" "public"."user_role" DEFAULT 'staff'::"public"."user_role",
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."users" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."vendor_ledger" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "vendor_id" "uuid" NOT NULL,
    "general_ledger_id" "uuid",
    "entry_date" "date" NOT NULL,
    "particulars" "text" NOT NULL,
    "debit" numeric(12,2),
    "credit" numeric(12,2),
    "balance" numeric(12,2) DEFAULT 0 NOT NULL,
    "notes" "text",
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."vendor_ledger" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."vendor_tags" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "vendor_id" "uuid" NOT NULL,
    "tag_name" character varying(100) NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."vendor_tags" OWNER TO "postgres";


COMMENT ON TABLE "public"."vendor_tags" IS 'Tags that can be associated with vendors for more detailed expense tracking';



COMMENT ON COLUMN "public"."vendor_tags"."tag_name" IS 'Tag name (e.g., "John", "Mary" for a Salaries vendor)';



CREATE TABLE IF NOT EXISTS "public"."vendors" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "contact_person" "text",
    "phone" "text",
    "email" "text",
    "address" "text",
    "notes" "text",
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."vendors" OWNER TO "postgres";


ALTER TABLE ONLY "public"."customers"
    ADD CONSTRAINT "customers_phone_key" UNIQUE ("phone");



ALTER TABLE ONLY "public"."customers"
    ADD CONSTRAINT "customers_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."general_ledger"
    ADD CONSTRAINT "general_ledger_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."measurements"
    ADD CONSTRAINT "measurements_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."order_items"
    ADD CONSTRAINT "order_items_order_id_order_type_key" UNIQUE ("order_id", "order_type");



ALTER TABLE ONLY "public"."order_items"
    ADD CONSTRAINT "order_items_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."orders"
    ADD CONSTRAINT "orders_order_number_key" UNIQUE ("order_number");



ALTER TABLE ONLY "public"."orders"
    ADD CONSTRAINT "orders_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payments"
    ADD CONSTRAINT "payments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_email_key" UNIQUE ("email");



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."vendor_ledger"
    ADD CONSTRAINT "vendor_ledger_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."vendor_tags"
    ADD CONSTRAINT "vendor_tags_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."vendor_tags"
    ADD CONSTRAINT "vendor_tags_vendor_id_tag_name_key" UNIQUE ("vendor_id", "tag_name");



ALTER TABLE ONLY "public"."vendors"
    ADD CONSTRAINT "vendors_pkey" PRIMARY KEY ("id");



CREATE INDEX "idx_customers_name" ON "public"."customers" USING "btree" ("name");



CREATE INDEX "idx_customers_phone" ON "public"."customers" USING "btree" ("phone");



CREATE INDEX "idx_general_ledger_entry_date" ON "public"."general_ledger" USING "btree" ("entry_date" DESC);



CREATE INDEX "idx_general_ledger_order_id" ON "public"."general_ledger" USING "btree" ("order_id");



CREATE INDEX "idx_general_ledger_tag_id" ON "public"."general_ledger" USING "btree" ("tag_id");



CREATE INDEX "idx_general_ledger_vendor_id" ON "public"."general_ledger" USING "btree" ("vendor_id");



CREATE INDEX "idx_measurements_customer_id" ON "public"."measurements" USING "btree" ("customer_id");



CREATE INDEX "idx_measurements_is_default" ON "public"."measurements" USING "btree" ("customer_id", "is_default");



CREATE INDEX "idx_order_items_order_id" ON "public"."order_items" USING "btree" ("order_id");



CREATE INDEX "idx_order_items_order_type" ON "public"."order_items" USING "btree" ("order_type");



CREATE INDEX "idx_orders_booking_date" ON "public"."orders" USING "btree" ("booking_date");



CREATE INDEX "idx_orders_created_at" ON "public"."orders" USING "btree" ("created_at");



CREATE INDEX "idx_orders_customer_id" ON "public"."orders" USING "btree" ("customer_id");



CREATE INDEX "idx_orders_delivery_date" ON "public"."orders" USING "btree" ("delivery_date");



CREATE INDEX "idx_orders_measurement_id" ON "public"."orders" USING "btree" ("measurement_id");



CREATE INDEX "idx_orders_order_number" ON "public"."orders" USING "btree" ("order_number");



CREATE INDEX "idx_orders_status" ON "public"."orders" USING "btree" ("status");



CREATE INDEX "idx_payments_customer_id" ON "public"."payments" USING "btree" ("customer_id");



CREATE INDEX "idx_payments_order_id" ON "public"."payments" USING "btree" ("order_id");



CREATE INDEX "idx_payments_payment_date" ON "public"."payments" USING "btree" ("payment_date");



CREATE INDEX "idx_payments_recorded_by" ON "public"."payments" USING "btree" ("recorded_by");



CREATE INDEX "idx_vendor_ledger_entry_date" ON "public"."vendor_ledger" USING "btree" ("entry_date" DESC);



CREATE INDEX "idx_vendor_ledger_vendor_id" ON "public"."vendor_ledger" USING "btree" ("vendor_id");



CREATE INDEX "idx_vendor_tags_vendor_id" ON "public"."vendor_tags" USING "btree" ("vendor_id");



CREATE OR REPLACE VIEW "public"."orders_with_payment_status" WITH ("security_invoker"='on') AS
 SELECT "o"."id",
    "o"."order_number",
    "o"."customer_id",
    "o"."booking_date",
    "o"."delivery_date",
    "o"."comments",
    "o"."fitting_preferences",
    "o"."created_at",
    "o"."updated_at",
    "o"."total_amount",
    "o"."advance_paid",
    "o"."balance",
    "o"."payment_method",
    "o"."measurement_id",
    "o"."status",
    COALESCE("o"."advance_paid", (0)::numeric) AS "initial_advance",
    COALESCE("sum"("p"."amount"), (0)::numeric) AS "additional_payments",
    (COALESCE("o"."advance_paid", (0)::numeric) + COALESCE("sum"("p"."amount"), (0)::numeric)) AS "total_paid",
    ("o"."total_amount" - (COALESCE("o"."advance_paid", (0)::numeric) + COALESCE("sum"("p"."amount"), (0)::numeric))) AS "current_balance",
    "count"("p"."id") AS "payment_count"
   FROM ("public"."orders" "o"
     LEFT JOIN "public"."payments" "p" ON (("p"."order_id" = "o"."id")))
  GROUP BY "o"."id";



CREATE OR REPLACE TRIGGER "trg_calculate_general_ledger_balance" BEFORE INSERT ON "public"."general_ledger" FOR EACH ROW EXECUTE FUNCTION "public"."calculate_general_ledger_balance"();



CREATE OR REPLACE TRIGGER "trg_create_vendor_sub_ledger_entry" AFTER INSERT ON "public"."general_ledger" FOR EACH ROW EXECUTE FUNCTION "public"."create_vendor_sub_ledger_entry"();



CREATE OR REPLACE TRIGGER "trg_recalc_balance_after_delete" AFTER DELETE ON "public"."general_ledger" FOR EACH ROW EXECUTE FUNCTION "public"."recalc_balance_after_delete"();



CREATE OR REPLACE TRIGGER "trg_recalc_balance_after_update" AFTER UPDATE ON "public"."general_ledger" FOR EACH ROW EXECUTE FUNCTION "public"."recalc_balance_after_update"();



CREATE OR REPLACE TRIGGER "update_customers_updated_at" BEFORE UPDATE ON "public"."customers" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_measurements_updated_at" BEFORE UPDATE ON "public"."measurements" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_order_items_updated_at" BEFORE UPDATE ON "public"."order_items" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_orders_updated_at" BEFORE UPDATE ON "public"."orders" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_payments_updated_at" BEFORE UPDATE ON "public"."payments" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_users_updated_at" BEFORE UPDATE ON "public"."users" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_vendor_tags_updated_at" BEFORE UPDATE ON "public"."vendor_tags" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



ALTER TABLE ONLY "public"."general_ledger"
    ADD CONSTRAINT "general_ledger_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "public"."orders"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."general_ledger"
    ADD CONSTRAINT "general_ledger_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "public"."vendor_tags"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."general_ledger"
    ADD CONSTRAINT "general_ledger_vendor_id_fkey" FOREIGN KEY ("vendor_id") REFERENCES "public"."vendors"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."measurements"
    ADD CONSTRAINT "measurements_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "public"."customers"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."order_items"
    ADD CONSTRAINT "order_items_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "public"."orders"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."orders"
    ADD CONSTRAINT "orders_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "public"."customers"("id");



ALTER TABLE ONLY "public"."orders"
    ADD CONSTRAINT "orders_measurement_id_fkey" FOREIGN KEY ("measurement_id") REFERENCES "public"."measurements"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."payments"
    ADD CONSTRAINT "payments_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "public"."customers"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payments"
    ADD CONSTRAINT "payments_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "public"."orders"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payments"
    ADD CONSTRAINT "payments_recorded_by_fkey" FOREIGN KEY ("recorded_by") REFERENCES "public"."users"("id");



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_id_fkey" FOREIGN KEY ("id") REFERENCES "auth"."users"("id");



ALTER TABLE ONLY "public"."vendor_ledger"
    ADD CONSTRAINT "vendor_ledger_general_ledger_id_fkey" FOREIGN KEY ("general_ledger_id") REFERENCES "public"."general_ledger"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."vendor_ledger"
    ADD CONSTRAINT "vendor_ledger_vendor_id_fkey" FOREIGN KEY ("vendor_id") REFERENCES "public"."vendors"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."vendor_tags"
    ADD CONSTRAINT "vendor_tags_vendor_id_fkey" FOREIGN KEY ("vendor_id") REFERENCES "public"."vendors"("id") ON DELETE CASCADE;



CREATE POLICY "Allow authenticated insert" ON "public"."users" FOR INSERT WITH CHECK (("auth"."uid"() = "id"));



CREATE POLICY "Enable all operations for authenticated users" ON "public"."customers" USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable all operations for authenticated users" ON "public"."general_ledger" USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable all operations for authenticated users" ON "public"."order_items" USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable all operations for authenticated users" ON "public"."orders" USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable all operations for authenticated users" ON "public"."vendor_ledger" USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable all operations for authenticated users" ON "public"."vendors" USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable delete for authenticated users" ON "public"."vendor_tags" FOR DELETE USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable delete for authenticated users only" ON "public"."measurements" FOR DELETE USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable delete for authenticated users only" ON "public"."payments" FOR DELETE USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable insert for authenticated users" ON "public"."vendor_tags" FOR INSERT WITH CHECK (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable insert for authenticated users only" ON "public"."measurements" FOR INSERT WITH CHECK (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable insert for authenticated users only" ON "public"."payments" FOR INSERT WITH CHECK (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable read access for all users" ON "public"."measurements" FOR SELECT USING (true);



CREATE POLICY "Enable read access for authenticated users" ON "public"."payments" FOR SELECT USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable read access for authenticated users" ON "public"."vendor_tags" FOR SELECT USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable update for authenticated users" ON "public"."vendor_tags" FOR UPDATE USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable update for authenticated users only" ON "public"."measurements" FOR UPDATE USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable update for authenticated users only" ON "public"."payments" FOR UPDATE USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Users can read own data" ON "public"."users" FOR SELECT USING (("auth"."uid"() = "id"));



CREATE POLICY "Users can update own data" ON "public"."users" FOR UPDATE USING (("auth"."uid"() = "id"));



ALTER TABLE "public"."customers" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."general_ledger" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."measurements" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."order_items" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."orders" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."payments" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."users" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."vendor_ledger" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."vendor_tags" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."vendors" ENABLE ROW LEVEL SECURITY;




ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";


REVOKE USAGE ON SCHEMA "public" FROM PUBLIC;
GRANT ALL ON SCHEMA "public" TO PUBLIC;
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";

























































































































































GRANT ALL ON FUNCTION "public"."calculate_general_ledger_balance"() TO "anon";
GRANT ALL ON FUNCTION "public"."calculate_general_ledger_balance"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."calculate_general_ledger_balance"() TO "service_role";



GRANT ALL ON FUNCTION "public"."calculate_order_balance"("order_uuid" "uuid") TO "anon";
GRANT ALL ON FUNCTION "public"."calculate_order_balance"("order_uuid" "uuid") TO "authenticated";
GRANT ALL ON FUNCTION "public"."calculate_order_balance"("order_uuid" "uuid") TO "service_role";



GRANT ALL ON FUNCTION "public"."create_vendor_sub_ledger_entry"() TO "anon";
GRANT ALL ON FUNCTION "public"."create_vendor_sub_ledger_entry"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."create_vendor_sub_ledger_entry"() TO "service_role";



GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "anon";
GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "service_role";



GRANT ALL ON FUNCTION "public"."increment_counter"("counter_id" integer) TO "anon";
GRANT ALL ON FUNCTION "public"."increment_counter"("counter_id" integer) TO "authenticated";
GRANT ALL ON FUNCTION "public"."increment_counter"("counter_id" integer) TO "service_role";



GRANT ALL ON FUNCTION "public"."prevent_advance_paid_modification"() TO "anon";
GRANT ALL ON FUNCTION "public"."prevent_advance_paid_modification"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."prevent_advance_paid_modification"() TO "service_role";



GRANT ALL ON FUNCTION "public"."recalc_balance_after_delete"() TO "anon";
GRANT ALL ON FUNCTION "public"."recalc_balance_after_delete"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."recalc_balance_after_delete"() TO "service_role";



GRANT ALL ON FUNCTION "public"."recalc_balance_after_update"() TO "anon";
GRANT ALL ON FUNCTION "public"."recalc_balance_after_update"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."recalc_balance_after_update"() TO "service_role";



GRANT ALL ON FUNCTION "public"."recalculate_all_balances"() TO "anon";
GRANT ALL ON FUNCTION "public"."recalculate_all_balances"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."recalculate_all_balances"() TO "service_role";



GRANT ALL ON FUNCTION "public"."recalculate_balances_after_date"("from_date" timestamp with time zone, "from_created_at" timestamp with time zone) TO "anon";
GRANT ALL ON FUNCTION "public"."recalculate_balances_after_date"("from_date" timestamp with time zone, "from_created_at" timestamp with time zone) TO "authenticated";
GRANT ALL ON FUNCTION "public"."recalculate_balances_after_date"("from_date" timestamp with time zone, "from_created_at" timestamp with time zone) TO "service_role";



GRANT ALL ON FUNCTION "public"."recalculate_general_ledger_balances"() TO "anon";
GRANT ALL ON FUNCTION "public"."recalculate_general_ledger_balances"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."recalculate_general_ledger_balances"() TO "service_role";



GRANT ALL ON FUNCTION "public"."update_updated_at_column"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_updated_at_column"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_updated_at_column"() TO "service_role";



GRANT ALL ON FUNCTION "public"."update_vendor_timestamp"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_vendor_timestamp"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_vendor_timestamp"() TO "service_role";


















GRANT ALL ON TABLE "public"."customers" TO "anon";
GRANT ALL ON TABLE "public"."customers" TO "authenticated";
GRANT ALL ON TABLE "public"."customers" TO "service_role";



GRANT ALL ON TABLE "public"."general_ledger" TO "anon";
GRANT ALL ON TABLE "public"."general_ledger" TO "authenticated";
GRANT ALL ON TABLE "public"."general_ledger" TO "service_role";



GRANT ALL ON TABLE "public"."measurements" TO "anon";
GRANT ALL ON TABLE "public"."measurements" TO "authenticated";
GRANT ALL ON TABLE "public"."measurements" TO "service_role";



GRANT ALL ON TABLE "public"."order_items" TO "anon";
GRANT ALL ON TABLE "public"."order_items" TO "authenticated";
GRANT ALL ON TABLE "public"."order_items" TO "service_role";



GRANT ALL ON TABLE "public"."orders" TO "anon";
GRANT ALL ON TABLE "public"."orders" TO "authenticated";
GRANT ALL ON TABLE "public"."orders" TO "service_role";



GRANT ALL ON TABLE "public"."orders_with_payment_status" TO "anon";
GRANT ALL ON TABLE "public"."orders_with_payment_status" TO "authenticated";
GRANT ALL ON TABLE "public"."orders_with_payment_status" TO "service_role";



GRANT ALL ON TABLE "public"."payments" TO "anon";
GRANT ALL ON TABLE "public"."payments" TO "authenticated";
GRANT ALL ON TABLE "public"."payments" TO "service_role";



GRANT ALL ON TABLE "public"."users" TO "anon";
GRANT ALL ON TABLE "public"."users" TO "authenticated";
GRANT ALL ON TABLE "public"."users" TO "service_role";



GRANT ALL ON TABLE "public"."vendor_ledger" TO "anon";
GRANT ALL ON TABLE "public"."vendor_ledger" TO "authenticated";
GRANT ALL ON TABLE "public"."vendor_ledger" TO "service_role";



GRANT ALL ON TABLE "public"."vendor_tags" TO "anon";
GRANT ALL ON TABLE "public"."vendor_tags" TO "authenticated";
GRANT ALL ON TABLE "public"."vendor_tags" TO "service_role";



GRANT ALL ON TABLE "public"."vendors" TO "anon";
GRANT ALL ON TABLE "public"."vendors" TO "authenticated";
GRANT ALL ON TABLE "public"."vendors" TO "service_role";









ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "service_role";




























