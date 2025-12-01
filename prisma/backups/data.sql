SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict VBe3Kvqu095Cq0bQJoIfQq60DmzyigQSeg3uKfe1Nrjo5ZnCdZgqE8xkTboDpEB

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
00000000-0000-0000-0000-000000000000	6639ca98-18f4-4b82-9660-0db3e4564b2f	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"ahsantariq.ar@gmail.com","user_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","user_phone":""}}	2025-09-25 01:41:16.906229+00	
00000000-0000-0000-0000-000000000000	81c4c527-5020-4ba9-9f7c-753555396dc4	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 01:41:59.743833+00	
00000000-0000-0000-0000-000000000000	25d9cd1a-91bf-4ef1-b946-83556c8063ad	{"action":"logout","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-25 01:42:07.553318+00	
00000000-0000-0000-0000-000000000000	f5bca192-5d6d-4a11-a8d7-9a6c9502e570	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 01:43:03.493059+00	
00000000-0000-0000-0000-000000000000	4caf52f1-1e5c-4579-9873-e6879abe810c	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 01:44:35.085894+00	
00000000-0000-0000-0000-000000000000	e6d3ff50-af40-4596-b454-5faa65faccf4	{"action":"logout","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-25 01:47:14.828973+00	
00000000-0000-0000-0000-000000000000	28216de1-85b5-4b8e-970a-d34d89d68ad6	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 01:51:04.441743+00	
00000000-0000-0000-0000-000000000000	c3b9510b-76c5-4c70-936a-03eb3da77afe	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 01:58:09.613864+00	
00000000-0000-0000-0000-000000000000	40bacb1c-a6dd-49b0-a9ae-28b7449b48b6	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 02:08:18.025506+00	
00000000-0000-0000-0000-000000000000	0c36c3c6-42c9-436d-9aba-65ecf17056aa	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 02:16:04.455134+00	
00000000-0000-0000-0000-000000000000	54bb0edd-db50-4882-8137-502967a7d658	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 02:36:52.158418+00	
00000000-0000-0000-0000-000000000000	0079fe6b-904f-4727-acce-27f521469219	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 03:26:42.947075+00	
00000000-0000-0000-0000-000000000000	714f44a6-a565-4e5a-968f-e80aa511943a	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 03:26:42.954608+00	
00000000-0000-0000-0000-000000000000	a67f1e9c-61d5-4778-b7ab-0833d50ad9c9	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 03:26:55.616994+00	
00000000-0000-0000-0000-000000000000	3d0bdabb-ad17-4ef7-833f-752859f5a355	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 03:34:26.689822+00	
00000000-0000-0000-0000-000000000000	269ba6d1-1bc9-4591-b757-4718534f7d66	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 03:34:26.698337+00	
00000000-0000-0000-0000-000000000000	1c2a6590-1e57-4ad5-8b73-c88650f2f3e4	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 03:34:58.717892+00	
00000000-0000-0000-0000-000000000000	4e9c1971-46c2-4e99-ad64-7e722cf88066	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 03:47:23.767634+00	
00000000-0000-0000-0000-000000000000	676a9140-2adb-4c8d-9f78-f052ec671e95	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 03:48:48.039906+00	
00000000-0000-0000-0000-000000000000	b6e91870-2e5f-4d13-9226-1d490b2e16d2	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 03:57:26.44368+00	
00000000-0000-0000-0000-000000000000	c91f0512-93cd-4700-8d5f-665cd721c22e	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 04:02:17.931831+00	
00000000-0000-0000-0000-000000000000	c30233b6-6417-44c7-9f98-c80393d50ffe	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 04:03:03.123171+00	
00000000-0000-0000-0000-000000000000	6f6d1ca1-1fb1-49a1-a4e8-b80ff9aabba5	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 04:04:54.161976+00	
00000000-0000-0000-0000-000000000000	afbcc380-b290-4b66-917c-cada1009b832	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 04:07:18.691184+00	
00000000-0000-0000-0000-000000000000	7c4907de-1036-45ba-b028-503dd51139ed	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 04:09:24.904889+00	
00000000-0000-0000-0000-000000000000	b4230743-f1a3-4336-a787-501587ac3cb4	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 04:13:46.55946+00	
00000000-0000-0000-0000-000000000000	507a4352-d915-4828-a4dd-6ea043c205cd	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 04:13:59.294019+00	
00000000-0000-0000-0000-000000000000	e7bfb878-4c0b-4b19-903e-7fd2a47ee9a5	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 04:20:45.857954+00	
00000000-0000-0000-0000-000000000000	d69761c2-291a-447f-8550-f6cf4d3b6455	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 04:41:58.057731+00	
00000000-0000-0000-0000-000000000000	3dfb0805-ecb6-4e8e-bed9-a77c97f27954	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 04:44:20.841529+00	
00000000-0000-0000-0000-000000000000	5c07e316-e4be-4675-8f24-547a49e41ed9	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 08:27:51.508812+00	
00000000-0000-0000-0000-000000000000	3f4ce39b-cbca-4c1c-99f2-c0c26d44c57a	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 08:27:51.532995+00	
00000000-0000-0000-0000-000000000000	b3cec19d-7bb7-4a7e-bd32-3555279b1ee3	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 08:55:40.673452+00	
00000000-0000-0000-0000-000000000000	f4f49350-7bed-44d5-a6de-4b56e0458211	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 09:11:20.031278+00	
00000000-0000-0000-0000-000000000000	7527335e-f837-4683-96a6-38f062617307	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 09:24:27.393176+00	
00000000-0000-0000-0000-000000000000	0f8ee7eb-3506-42de-8e1e-c040304ee542	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 09:25:08.184781+00	
00000000-0000-0000-0000-000000000000	3a1fe026-bbd5-4a09-bfec-7de648b4fbb8	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 09:39:12.746416+00	
00000000-0000-0000-0000-000000000000	9009e97e-d5f6-4fd7-8d16-e3223d5cc853	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 09:57:27.7525+00	
00000000-0000-0000-0000-000000000000	fc371024-51b9-41da-8425-a9c548c0aae2	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 10:15:17.964457+00	
00000000-0000-0000-0000-000000000000	a275c3a9-4a30-4a1b-9cc9-06d7e4b272d4	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 10:20:08.403427+00	
00000000-0000-0000-0000-000000000000	aadddf3a-b868-4e4c-a1b8-0949383d9cc7	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 10:30:57.350255+00	
00000000-0000-0000-0000-000000000000	59493990-fffb-4762-98bc-dc313baa95f6	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 11:36:30.811758+00	
00000000-0000-0000-0000-000000000000	2da83c90-7c3e-439c-bf7a-9695be63b8ff	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 11:36:30.820299+00	
00000000-0000-0000-0000-000000000000	7d501bbf-7702-4bd3-a0b3-e217d4087037	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 11:47:47.381946+00	
00000000-0000-0000-0000-000000000000	11e0fac0-3578-463f-b088-4705bcfe556a	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 11:47:47.38795+00	
00000000-0000-0000-0000-000000000000	c13f9aef-b119-483c-b65e-4afa3ad29f7a	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 12:22:32.554769+00	
00000000-0000-0000-0000-000000000000	e287f7dd-c37f-4d01-9620-bdf63f4943bf	{"action":"logout","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-25 12:25:33.559121+00	
00000000-0000-0000-0000-000000000000	a60c6981-e338-4f0e-92b3-1b78ca40873d	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 12:56:56.678392+00	
00000000-0000-0000-0000-000000000000	07df6c78-16b6-481f-9ba0-76c342e31a84	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 13:01:27.429975+00	
00000000-0000-0000-0000-000000000000	db7b9ea4-d911-4b24-afb5-702d6189e7c3	{"action":"logout","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-25 13:42:55.820147+00	
00000000-0000-0000-0000-000000000000	afc5223d-1d85-460d-9f7d-71d099aa88a7	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 13:43:08.10261+00	
00000000-0000-0000-0000-000000000000	23467978-46cb-4cac-aea9-2b3b5533aae7	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 15:33:54.205287+00	
00000000-0000-0000-0000-000000000000	58ea4f12-7a23-42ce-bb45-b1a14452cfd9	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 15:33:54.21535+00	
00000000-0000-0000-0000-000000000000	6d1ad65b-e37f-4aab-94b7-b92d7997225a	{"action":"logout","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-25 15:34:21.954949+00	
00000000-0000-0000-0000-000000000000	32ba9edc-c870-49ae-aadf-ca5646826bc0	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 15:35:07.403691+00	
00000000-0000-0000-0000-000000000000	b3f09b7b-db86-4330-b3a4-506f11cfc779	{"action":"logout","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-25 15:37:45.474163+00	
00000000-0000-0000-0000-000000000000	2a479e44-3241-490f-98f3-b4ac9badf03e	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-25 15:39:51.782495+00	
00000000-0000-0000-0000-000000000000	ae6a2973-dd0e-472b-b7df-760a20aa19fb	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 18:38:02.385704+00	
00000000-0000-0000-0000-000000000000	35e88e7d-2844-4b77-b48c-7529d63e4ebd	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-25 18:38:02.392838+00	
00000000-0000-0000-0000-000000000000	a23eeaba-0264-4a00-89f1-82a0b22722e3	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-27 20:52:24.443815+00	
00000000-0000-0000-0000-000000000000	9cec7327-9b31-4039-908c-18f2e773553a	{"action":"logout","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-27 20:55:01.422447+00	
00000000-0000-0000-0000-000000000000	d24ebf2a-7679-4f3f-9920-46212a0d86e8	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 22:36:19.453198+00	
00000000-0000-0000-0000-000000000000	92ced672-4750-4131-a5c0-f4acffa3613f	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-27 20:55:59.256282+00	
00000000-0000-0000-0000-000000000000	c101a4fd-5499-4acb-be07-82d11d9bd535	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-27 21:02:55.736302+00	
00000000-0000-0000-0000-000000000000	a82a0029-39c9-4862-b863-e73204567381	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-27 21:14:42.039072+00	
00000000-0000-0000-0000-000000000000	fe4682ac-0288-45a2-ab8b-925b0a612e33	{"action":"logout","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-09-27 21:17:55.202902+00	
00000000-0000-0000-0000-000000000000	06a7a319-2462-467d-8f72-050fe5400037	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-28 08:53:45.278114+00	
00000000-0000-0000-0000-000000000000	fcd4dfca-b85c-4079-9252-a6bd6882d219	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-09-30 01:55:05.942251+00	
00000000-0000-0000-0000-000000000000	28e38ab7-4a9d-41ab-9b3a-60758a9033d7	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 11:27:54.926502+00	
00000000-0000-0000-0000-000000000000	37e175a1-1dd0-4202-8e18-a3baacfbe410	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 11:27:54.950914+00	
00000000-0000-0000-0000-000000000000	64f7e7ee-091e-4e18-bd03-fbd50a307501	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 12:41:47.734729+00	
00000000-0000-0000-0000-000000000000	7b30dbfb-0c44-4cba-bebd-282e49dfc470	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-30 12:41:47.744027+00	
00000000-0000-0000-0000-000000000000	ca00d3e6-fdae-4a77-8757-8032500c2c0e	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 14:17:59.875083+00	
00000000-0000-0000-0000-000000000000	c0543b2f-ebb6-49ae-8662-fd9928d3e280	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-01 14:17:59.89972+00	
00000000-0000-0000-0000-000000000000	145d7ce6-36b1-4f11-9290-982710ca4f74	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 01:55:28.870217+00	
00000000-0000-0000-0000-000000000000	34736f43-1106-4ae3-9b00-764a849b6173	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 03:39:13.008637+00	
00000000-0000-0000-0000-000000000000	1e949a22-d25b-4a9e-9d28-eafd5f138848	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 03:39:13.029631+00	
00000000-0000-0000-0000-000000000000	b0ccd227-8b62-4e70-bc92-26b230556257	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 04:03:47.236318+00	
00000000-0000-0000-0000-000000000000	206ee89a-d35a-4077-aee1-5d954673fb0f	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 04:59:37.998616+00	
00000000-0000-0000-0000-000000000000	d1cebbc9-f5dc-44d4-8745-bcebc76f0707	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 04:59:38.012278+00	
00000000-0000-0000-0000-000000000000	6b1b2c98-671f-43f8-8914-ee10b2d012c2	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 04:59:46.783042+00	
00000000-0000-0000-0000-000000000000	a196684c-48b6-4e09-8eca-5d169da03bcb	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 14:06:04.814193+00	
00000000-0000-0000-0000-000000000000	c554c81a-ba6f-4733-990f-8c63cf7cc7ea	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 14:26:12.393371+00	
00000000-0000-0000-0000-000000000000	754bbef7-67e0-473e-9bb8-cbd7c274077e	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 15:35:50.129192+00	
00000000-0000-0000-0000-000000000000	64c15548-296a-4bdc-8b9b-04421b9ea872	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 15:35:50.147716+00	
00000000-0000-0000-0000-000000000000	9f1e8c54-dade-48af-a1d8-c0f2214f797a	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 16:34:20.936346+00	
00000000-0000-0000-0000-000000000000	3913d611-e833-4efa-8926-cab864c281c8	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 16:34:20.956648+00	
00000000-0000-0000-0000-000000000000	078bc60d-5ab2-4dd3-a97c-f73d81ca83e9	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 17:57:27.960868+00	
00000000-0000-0000-0000-000000000000	1fe3a2ac-0aae-41ca-935e-6bb593f6de2e	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 17:57:27.977164+00	
00000000-0000-0000-0000-000000000000	d8d794b1-4bee-4a0c-ac29-3b2f1a18995d	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 21:20:59.830249+00	
00000000-0000-0000-0000-000000000000	1e8a7578-0d76-47ad-8c4a-2eb66adac0a5	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 21:20:59.842461+00	
00000000-0000-0000-0000-000000000000	3731157b-b9c2-4352-8eb8-7982f01e2ed0	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 21:27:52.86639+00	
00000000-0000-0000-0000-000000000000	48161b9d-55f6-4511-a60b-24e6612f2592	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 21:27:52.867488+00	
00000000-0000-0000-0000-000000000000	b95e0a19-2a69-406e-8a33-798693f5516e	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-02 21:32:42.149821+00	
00000000-0000-0000-0000-000000000000	be551309-3ae1-4318-bdf6-dd5d540579f0	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-02 22:36:19.466735+00	
00000000-0000-0000-0000-000000000000	c210d2f8-5059-4b39-b4bf-27e42b2e33f7	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-03 09:18:46.873418+00	
00000000-0000-0000-0000-000000000000	324381fe-efd1-47f5-9eed-0023e0150d65	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-03 09:18:47.085037+00	
00000000-0000-0000-0000-000000000000	3c13b6c7-7c27-4a21-a25d-d3a3db417445	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-03 10:33:57.100043+00	
00000000-0000-0000-0000-000000000000	eea67130-919c-4663-ac80-673a16fbee6b	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-03 10:33:57.120695+00	
00000000-0000-0000-0000-000000000000	22660fa6-bab9-4c1f-a9df-388b2cef6654	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-03 13:33:03.419943+00	
00000000-0000-0000-0000-000000000000	f04b76a2-8362-4405-853b-e905d207c3db	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-03 13:33:03.438893+00	
00000000-0000-0000-0000-000000000000	5f29486a-093b-40aa-960a-28c7433326cd	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-04 11:07:07.533641+00	
00000000-0000-0000-0000-000000000000	757fbb8f-edff-4580-ba33-d6303b679cb8	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-04 11:07:07.555981+00	
00000000-0000-0000-0000-000000000000	02475447-8d13-4acf-8a78-6a4d10dab21f	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-04 20:35:07.094491+00	
00000000-0000-0000-0000-000000000000	eca7ce7f-20c4-4f03-b8d9-16695cc9c455	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-04 20:35:07.118345+00	
00000000-0000-0000-0000-000000000000	92852f66-6cac-4127-ab80-10a85f8d3226	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 02:04:33.349248+00	
00000000-0000-0000-0000-000000000000	acb40991-4751-444d-bb78-8c0c314c3c86	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 02:04:33.368965+00	
00000000-0000-0000-0000-000000000000	133297c5-df94-4d47-a663-ddd95166a894	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 02:11:37.005182+00	
00000000-0000-0000-0000-000000000000	15882b39-65bb-4e52-a5a6-e1c9afe2ce3b	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 02:11:37.009734+00	
00000000-0000-0000-0000-000000000000	feee8634-a73c-496e-b9fc-9f2f2068c9b6	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 03:10:07.928179+00	
00000000-0000-0000-0000-000000000000	c7fe9974-d3a2-4e25-bff3-dfcf5925170c	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 03:10:07.947981+00	
00000000-0000-0000-0000-000000000000	dc097ebd-d2fe-4f52-98de-12d1e3625d02	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 04:08:37.851852+00	
00000000-0000-0000-0000-000000000000	b4cffc3d-7a1c-4bc0-a11e-d72190ad6256	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 04:08:37.864906+00	
00000000-0000-0000-0000-000000000000	97a8d282-e086-42a6-a5f9-9469baac21ad	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 04:44:02.798202+00	
00000000-0000-0000-0000-000000000000	3c342f48-cc90-4cf7-be95-f2dcc4c4b060	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 04:44:02.81463+00	
00000000-0000-0000-0000-000000000000	21a54a9d-efdc-440a-ae85-a60666c7ea0a	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 05:06:52.30419+00	
00000000-0000-0000-0000-000000000000	beac3aea-2a1f-40c9-b383-f82eabdb1985	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 05:06:52.309382+00	
00000000-0000-0000-0000-000000000000	22242947-f44e-4d82-8400-9b78be46693a	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-06 05:19:46.780302+00	
00000000-0000-0000-0000-000000000000	8739fa44-0051-48a0-8509-c6c079e30a6a	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 08:01:26.687152+00	
00000000-0000-0000-0000-000000000000	fa4dd3d8-3630-4dc1-99da-6643c1740550	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 08:01:26.714016+00	
00000000-0000-0000-0000-000000000000	02a2ba73-214d-41ca-8ac0-08a765b41d38	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 09:41:27.188608+00	
00000000-0000-0000-0000-000000000000	1b540813-25e7-4f6a-b3c0-cd456b90c7cb	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 09:41:27.201884+00	
00000000-0000-0000-0000-000000000000	5d492519-1c7b-441b-ace1-c27c29b2b7fd	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 12:15:22.177394+00	
00000000-0000-0000-0000-000000000000	f5eaf4b0-65b9-410a-8e32-baab4935c2fd	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 12:15:22.193832+00	
00000000-0000-0000-0000-000000000000	c47c1305-93f8-41b6-9dc2-3ed638ddef96	{"action":"logout","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-06 12:27:37.366+00	
00000000-0000-0000-0000-000000000000	50e502d1-9861-4d45-bc7d-ec8a8df5f7c3	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-06 12:28:05.069417+00	
00000000-0000-0000-0000-000000000000	5f8df68d-9676-4f7d-b114-f9333db76fb0	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-06 12:28:50.418859+00	
00000000-0000-0000-0000-000000000000	1b1b7808-3102-4ae5-a3c3-61f1093025f8	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-06 12:35:07.592915+00	
00000000-0000-0000-0000-000000000000	9a0490f9-37e1-4e97-81a9-7e23b8c16513	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-06 12:40:47.667325+00	
00000000-0000-0000-0000-000000000000	9ca9f4f5-aa50-422f-a9aa-6915f1ba7dc7	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-06 12:54:55.550705+00	
00000000-0000-0000-0000-000000000000	4643ae71-43f4-48ef-8d89-eee21b59f319	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 14:18:48.982821+00	
00000000-0000-0000-0000-000000000000	19c4777d-1343-41a2-83cd-ddeb0a7af81b	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 14:18:49.005905+00	
00000000-0000-0000-0000-000000000000	bfbf2c6b-b97a-4e69-94e4-92285bb7d80a	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 14:18:49.023327+00	
00000000-0000-0000-0000-000000000000	486e2f10-bc27-428f-8bed-8b8afe52f0f0	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 14:18:49.024441+00	
00000000-0000-0000-0000-000000000000	cb6e5631-1d2b-42f3-9522-ab5e52f58df6	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 15:19:27.959344+00	
00000000-0000-0000-0000-000000000000	58170aba-406f-4fbe-81f0-edc74f8dfa13	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-06 15:19:27.978064+00	
00000000-0000-0000-0000-000000000000	7af5101b-d9aa-45ca-96c2-84bb6c7e9f63	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-07 10:33:53.042536+00	
00000000-0000-0000-0000-000000000000	9357da17-3196-461b-8555-7ab0e555fe4e	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-07 10:33:53.073797+00	
00000000-0000-0000-0000-000000000000	d7b4ec45-f376-4335-bcff-4fd7f66d7c97	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-07 11:31:58.730975+00	
00000000-0000-0000-0000-000000000000	b122734b-ac24-4beb-b07b-c4d347c8224e	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-07 11:31:58.744796+00	
00000000-0000-0000-0000-000000000000	98d110a3-4bd5-469e-b688-0896d1aff3cc	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-07 12:30:08.046218+00	
00000000-0000-0000-0000-000000000000	23841a69-7434-4b72-b3a3-f24eb5f2053f	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-07 12:30:08.063125+00	
00000000-0000-0000-0000-000000000000	7b369a4a-30a9-4050-a6b2-8e9ab0f7bf91	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-07 13:28:26.412633+00	
00000000-0000-0000-0000-000000000000	61c12531-027d-498e-b875-8dfa6bf8024d	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-07 13:28:26.422828+00	
00000000-0000-0000-0000-000000000000	86c1d99e-8059-4886-84a7-9b5b14981321	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-07 14:43:49.457012+00	
00000000-0000-0000-0000-000000000000	aeccbd71-875c-4398-9659-5827a66c6ebf	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-07 14:43:49.471744+00	
00000000-0000-0000-0000-000000000000	23d3f29d-8b7b-4aa9-82cc-095b35d0729e	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-07 20:59:52.739175+00	
00000000-0000-0000-0000-000000000000	2c11c122-fa54-4db2-b49f-307c158983b1	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-07 20:59:52.757423+00	
00000000-0000-0000-0000-000000000000	6e32b5a4-9ed9-4ea9-a5dc-3cff6641b1f3	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-08 10:56:50.902148+00	
00000000-0000-0000-0000-000000000000	f876bd37-4898-48e3-9347-008a182a466f	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-08 10:56:50.926765+00	
00000000-0000-0000-0000-000000000000	09be88f6-cc28-4199-86e6-b86e4066f947	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-08 12:18:51.069164+00	
00000000-0000-0000-0000-000000000000	f376ea9e-51d5-467b-b4ac-a7da049f9bb6	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-08 12:18:51.084151+00	
00000000-0000-0000-0000-000000000000	cd35909c-6673-4505-b1f2-989f03f1fa13	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-08 12:22:01.540597+00	
00000000-0000-0000-0000-000000000000	f4c36339-2fc0-47ee-95d8-496d8e60adab	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-08 12:22:01.547077+00	
00000000-0000-0000-0000-000000000000	d27ee372-a320-4c25-9fe5-f9dcfe55270f	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-08 15:15:16.121134+00	
00000000-0000-0000-0000-000000000000	dec2351c-e170-4712-a8d2-e1d91f286a57	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-08 15:15:16.133429+00	
00000000-0000-0000-0000-000000000000	d9b2e885-d55b-4995-a031-9e1339d3ead0	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-09 11:15:05.88846+00	
00000000-0000-0000-0000-000000000000	f008ba2e-fca4-438a-9815-30f891b97a33	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-09 11:15:05.915414+00	
00000000-0000-0000-0000-000000000000	1f256caa-f8a4-407a-a1f3-3832b9e3101e	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-09 13:12:52.476673+00	
00000000-0000-0000-0000-000000000000	a3a9a27b-1d90-4f59-b81b-bdc238f6c39e	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-09 13:12:52.491232+00	
00000000-0000-0000-0000-000000000000	d86e6481-ed35-411d-b82b-394750610f1c	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-18 21:48:36.015364+00	
00000000-0000-0000-0000-000000000000	fa565544-e06a-4b4b-9c73-51dc4990bf96	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-18 22:23:42.674602+00	
00000000-0000-0000-0000-000000000000	4c7f5916-a86e-414b-be05-e6de7e0e2281	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-18 22:50:21.733059+00	
00000000-0000-0000-0000-000000000000	c27c294c-6d74-49e0-813f-a1390613fcfd	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-18 22:50:21.739576+00	
00000000-0000-0000-0000-000000000000	b7ae979f-21a5-4b82-936e-775125b0afd0	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-18 22:57:24.878848+00	
00000000-0000-0000-0000-000000000000	a9f3fa72-2fc9-4075-9cea-ac78985df69b	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-18 22:57:24.881876+00	
00000000-0000-0000-0000-000000000000	66ed09c8-4d22-4899-8c17-89f86444a404	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-18 23:24:15.222189+00	
00000000-0000-0000-0000-000000000000	d9f21231-d1ff-4016-bda1-96ee05d02979	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-18 23:47:35.064194+00	
00000000-0000-0000-0000-000000000000	0da28f06-51b8-4d6e-b0fc-a8be49aae12d	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-18 23:52:16.1577+00	
00000000-0000-0000-0000-000000000000	a05fcf1b-b47e-4a8f-99f2-d9e1197fe19c	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-18 23:52:16.164622+00	
00000000-0000-0000-0000-000000000000	0c9f8503-7c00-41a5-8c49-9f36f17a48f9	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-18 23:55:30.416752+00	
00000000-0000-0000-0000-000000000000	cb55db51-5c11-4ed5-b3bb-28c5438e1bc3	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-19 00:01:07.849288+00	
00000000-0000-0000-0000-000000000000	7d3f26d9-d781-4896-aacb-f608a72da236	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-19 00:01:07.851974+00	
00000000-0000-0000-0000-000000000000	d6593dd4-f3d2-408d-8059-e64b1bc076ad	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-19 00:28:50.725113+00	
00000000-0000-0000-0000-000000000000	cab0f317-ee9a-44ee-ac26-ee8f47cf2392	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-19 00:28:50.728845+00	
00000000-0000-0000-0000-000000000000	9f824883-9029-4369-9be5-95e9305cc264	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-19 13:33:39.976163+00	
00000000-0000-0000-0000-000000000000	b443d9d2-6483-4113-8139-946c016f16b1	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-19 13:33:40.003624+00	
00000000-0000-0000-0000-000000000000	67bf38a2-f10b-45e7-b9b2-f078b46ec23f	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-19 14:18:16.607423+00	
00000000-0000-0000-0000-000000000000	a28b8007-54ef-4d60-94aa-657c7febfa57	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-19 14:18:16.611882+00	
00000000-0000-0000-0000-000000000000	2ba288a4-f940-445b-9811-bd7253ecaf11	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-19 14:20:11.375504+00	
00000000-0000-0000-0000-000000000000	daf99bf8-cbf2-4872-bef2-db5ca70ec98b	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-19 14:20:11.377531+00	
00000000-0000-0000-0000-000000000000	72c26b42-8435-4ff7-b42f-21854cb90dda	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-20 08:51:00.416781+00	
00000000-0000-0000-0000-000000000000	6424eec9-9d2b-4a0e-b71f-c36beee8b067	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-20 08:51:00.444746+00	
00000000-0000-0000-0000-000000000000	1bc7c733-9830-4afb-abcf-7f5e953b4eac	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-21 05:56:23.679303+00	
00000000-0000-0000-0000-000000000000	61c13676-dbaf-4767-bad6-faa25407c851	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-21 05:56:23.699722+00	
00000000-0000-0000-0000-000000000000	d81569c1-99bc-4202-adeb-95b6c11a42a7	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-21 10:42:54.692105+00	
00000000-0000-0000-0000-000000000000	e996706e-e57e-4eda-9c27-80baadc4ac98	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-21 10:42:54.703619+00	
00000000-0000-0000-0000-000000000000	4d472ca7-eff9-4906-9c0a-f8332e48b18d	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-21 15:54:47.817597+00	
00000000-0000-0000-0000-000000000000	52ceea2e-a6b6-488b-a328-96bb231f8993	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-21 15:54:47.832502+00	
00000000-0000-0000-0000-000000000000	b34f3b1b-aa60-49e0-9128-0a0572d5c7d6	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-21 17:28:50.973182+00	
00000000-0000-0000-0000-000000000000	a5e22df4-b185-40c3-939c-98b20601cc88	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-21 17:28:50.999584+00	
00000000-0000-0000-0000-000000000000	6829992e-2fa5-432d-95ab-ae35ad9aae06	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-21 20:22:30.981201+00	
00000000-0000-0000-0000-000000000000	b671c0a2-a151-4a7c-8529-60e7835a55db	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-21 20:22:30.994672+00	
00000000-0000-0000-0000-000000000000	2d26974e-badf-4bfb-bef5-9f97ee0a64f5	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-21 23:34:08.632524+00	
00000000-0000-0000-0000-000000000000	65794df7-cf1c-4670-a9b4-e4fc917d2da1	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-21 23:34:08.646216+00	
00000000-0000-0000-0000-000000000000	addf1ae3-df43-447e-b5e6-be18a0f39944	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-22 13:44:49.187218+00	
00000000-0000-0000-0000-000000000000	3c1ce41f-7348-4b2b-b4c5-006c6ae12d77	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-22 13:44:49.211306+00	
00000000-0000-0000-0000-000000000000	398db649-11da-48ee-833a-cb92fe66976a	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-27 15:10:20.07019+00	
00000000-0000-0000-0000-000000000000	1a1c68d5-37e7-45a8-9416-794ee808d319	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-27 16:13:08.912302+00	
00000000-0000-0000-0000-000000000000	e136183d-709c-4fca-a7d2-15c7669f8403	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-27 16:13:08.93062+00	
00000000-0000-0000-0000-000000000000	5a98a21e-d124-49fb-ae90-6c02dac9884a	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-27 17:14:33.496236+00	
00000000-0000-0000-0000-000000000000	9fb6343e-0343-4fb5-857d-6426d2a4c99f	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-27 17:14:33.511151+00	
00000000-0000-0000-0000-000000000000	9f7bcd17-50f4-4892-9d9f-5f505210162c	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-29 10:46:32.291618+00	
00000000-0000-0000-0000-000000000000	d1508be0-7617-4c41-93dd-7d5242fde95b	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-29 10:46:32.315165+00	
00000000-0000-0000-0000-000000000000	7b352119-9819-402e-87df-f07363655d6a	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-29 10:54:30.382676+00	
00000000-0000-0000-0000-000000000000	bfc2816a-d636-4a8d-9620-cc08e97f6003	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-29 13:14:00.287059+00	
00000000-0000-0000-0000-000000000000	d3d48bc2-8567-4f0c-bdd5-f22cb4743c5e	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-29 13:14:00.31423+00	
00000000-0000-0000-0000-000000000000	ca30e58c-c578-48d1-a90e-9e2aa42c2fe8	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-29 14:27:38.387476+00	
00000000-0000-0000-0000-000000000000	3f91b16c-474a-4675-a09b-ab338cf3f79d	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-29 14:27:38.402436+00	
00000000-0000-0000-0000-000000000000	4bdc0624-189e-4ab4-bdb7-2879847fc968	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-29 20:11:29.458017+00	
00000000-0000-0000-0000-000000000000	bf64fe5a-969b-412b-b0b7-260bcd50863c	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-29 20:11:29.480235+00	
00000000-0000-0000-0000-000000000000	72239ccc-b4ba-4bb8-90e2-9d23a512dc68	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 11:54:49.269385+00	
00000000-0000-0000-0000-000000000000	7d9bb0b4-38c9-4d73-bc45-d030ea09b8c9	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 11:54:49.294477+00	
00000000-0000-0000-0000-000000000000	b2edf618-4eb9-4dfa-a734-92dd04ee49d0	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 14:19:44.917328+00	
00000000-0000-0000-0000-000000000000	b3416228-20fc-45cb-9c08-ab76aea2198d	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 14:19:44.927535+00	
00000000-0000-0000-0000-000000000000	6d0bea34-ffcf-4822-8fb8-475d94cc4564	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 15:53:05.330662+00	
00000000-0000-0000-0000-000000000000	31ba3a55-e635-4a1f-8e00-d5606edcccce	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 15:53:05.348998+00	
00000000-0000-0000-0000-000000000000	db21d0bd-6913-4bf3-aa8b-346a2bd2c6b8	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 16:51:35.602842+00	
00000000-0000-0000-0000-000000000000	614ceb05-1355-4716-91a9-e431742b0c10	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 16:51:35.620819+00	
00000000-0000-0000-0000-000000000000	8c788220-ff6c-4f14-8e7c-5e32c7b3847d	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 17:32:35.472201+00	
00000000-0000-0000-0000-000000000000	dba6ca20-b4eb-4b6e-b5cd-2ada5647fda1	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 17:32:35.480703+00	
00000000-0000-0000-0000-000000000000	dd0688d2-1173-434b-b2d9-796b6b4c0755	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 18:32:08.33572+00	
00000000-0000-0000-0000-000000000000	08086bb3-0212-46b6-94c2-340bc572aa7b	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 18:32:08.344596+00	
00000000-0000-0000-0000-000000000000	a3a567b4-a9fa-4c9a-af46-ec515f3b628b	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 19:30:38.846899+00	
00000000-0000-0000-0000-000000000000	0c660802-84b4-4a6b-b173-a726ec73ba9d	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-30 19:30:38.859461+00	
00000000-0000-0000-0000-000000000000	a3a0e13a-37fb-4868-b669-9bd4881c5c1e	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-31 15:50:57.065379+00	
00000000-0000-0000-0000-000000000000	be6d04b8-4442-4a43-af3a-492b05c917b5	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-31 15:50:57.094914+00	
00000000-0000-0000-0000-000000000000	e9da9415-fe17-4057-88f3-89ee3fc22d06	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-31 16:49:12.969222+00	
00000000-0000-0000-0000-000000000000	3b8cf664-0e7b-4f84-9826-08c54176879c	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-31 16:49:12.988063+00	
00000000-0000-0000-0000-000000000000	7c420be4-db1b-4456-aa77-94b942f92969	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-01 07:54:58.499438+00	
00000000-0000-0000-0000-000000000000	e3bda12b-abb4-4ad2-aa8c-4e5e619c9ded	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-01 07:54:58.524949+00	
00000000-0000-0000-0000-000000000000	dfb37fd3-2fb8-4ad4-a31c-89b03bd1fd87	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-01 11:54:05.505453+00	
00000000-0000-0000-0000-000000000000	5b7d1428-12f9-4108-a5aa-ef83943389bd	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-01 11:54:05.525376+00	
00000000-0000-0000-0000-000000000000	1aa6f665-a72c-4284-98ed-7687c5e7c841	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-01 12:58:25.870606+00	
00000000-0000-0000-0000-000000000000	9f5fe279-be80-4a4b-88a9-e7f26ac6ba70	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-01 12:58:25.884982+00	
00000000-0000-0000-0000-000000000000	2d0d59f8-0078-4ff4-b918-f6ab719763ed	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-01 18:04:18.658806+00	
00000000-0000-0000-0000-000000000000	36c77fcc-a715-4088-89e4-d2d761e24d0d	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-01 18:04:18.680577+00	
00000000-0000-0000-0000-000000000000	2e57aaf9-429e-4a05-9ab7-b287c922afc6	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-02 19:46:37.996791+00	
00000000-0000-0000-0000-000000000000	dc797b50-2a72-4d99-8b56-0ebedb46d35f	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-02 19:46:38.025516+00	
00000000-0000-0000-0000-000000000000	5d40522c-dcc7-4b06-a8ca-09b2dbc98f38	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-02 19:58:11.070118+00	
00000000-0000-0000-0000-000000000000	5f57ff1a-31ba-4414-b46c-a2cafd230385	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-02 19:58:11.080675+00	
00000000-0000-0000-0000-000000000000	b8339243-ec1c-46fa-947b-62d14296f08f	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-02 22:03:10.680481+00	
00000000-0000-0000-0000-000000000000	be13d320-3ded-426d-90df-1d1c78081139	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-02 22:03:10.698187+00	
00000000-0000-0000-0000-000000000000	1ea5e963-cf2f-471a-9c59-66c4798422c8	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-02 23:07:36.790174+00	
00000000-0000-0000-0000-000000000000	ea845568-22a1-4c62-88c3-212092494cee	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-02 23:07:36.80448+00	
00000000-0000-0000-0000-000000000000	f37b2236-50f2-4781-bb96-f1adcc1d31a1	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 00:12:25.506433+00	
00000000-0000-0000-0000-000000000000	38afbec9-3b1c-4725-8834-ebeca078cfd0	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 00:12:25.519696+00	
00000000-0000-0000-0000-000000000000	cf0fd457-f217-4f31-b76c-b70cccfc4c17	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 01:55:08.693533+00	
00000000-0000-0000-0000-000000000000	5f16bf96-7623-4261-8fd8-1bd58c0e8882	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 01:55:08.713759+00	
00000000-0000-0000-0000-000000000000	6f9fbee7-6e30-435e-913d-d6967310e89e	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 12:57:51.195383+00	
00000000-0000-0000-0000-000000000000	cc84fbc0-3b6e-471e-9cf2-5eecc8ecc80f	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 12:57:51.224119+00	
00000000-0000-0000-0000-000000000000	d39378d9-f9bb-4b1e-93a5-8a611907909e	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 13:41:35.335521+00	
00000000-0000-0000-0000-000000000000	8e26f083-ce11-4a1b-b9c9-b1366b57f013	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 13:45:07.172281+00	
00000000-0000-0000-0000-000000000000	e5f52c6d-ea3a-49a6-8128-e5cff6653e93	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 13:45:07.182259+00	
00000000-0000-0000-0000-000000000000	8590a2b1-26a1-4364-8aca-9626e5f82ffc	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 14:40:00.830486+00	
00000000-0000-0000-0000-000000000000	911d3270-b2d2-44ab-9e6a-d0d03ac447f2	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 14:40:00.841505+00	
00000000-0000-0000-0000-000000000000	d521357d-d25b-4bf0-b9d6-991898466570	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 14:43:21.469237+00	
00000000-0000-0000-0000-000000000000	132b7529-811c-45a6-8ef4-5a2004989874	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 14:43:21.472599+00	
00000000-0000-0000-0000-000000000000	0ad9543c-94cb-475d-82fe-a25ec1d7bfeb	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-11-03 15:12:01.567857+00	
00000000-0000-0000-0000-000000000000	55a1c3e5-9d85-4c3f-9dc2-a3f848bb7db8	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 16:18:25.792325+00	
00000000-0000-0000-0000-000000000000	68521a36-9179-4f19-b70c-361931b0edca	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 16:18:25.803219+00	
00000000-0000-0000-0000-000000000000	30c96384-c868-4443-b5fb-4664035ee968	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 16:21:48.109243+00	
00000000-0000-0000-0000-000000000000	394f857b-fda8-4d5c-a6d2-935212a04fc3	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 16:21:48.110545+00	
00000000-0000-0000-0000-000000000000	25fbce17-0efc-476f-8565-dc9913f4756a	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 16:30:58.023729+00	
00000000-0000-0000-0000-000000000000	e9caa551-7187-416c-952d-17a4f941787d	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 16:30:58.02787+00	
00000000-0000-0000-0000-000000000000	720bb7a2-edd6-4fa8-a3d5-bac605536184	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 17:20:04.439571+00	
00000000-0000-0000-0000-000000000000	dfd7211e-91a7-4bc6-875d-3f234bd56f02	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 17:20:04.464445+00	
00000000-0000-0000-0000-000000000000	2ce11247-d010-418a-973b-76f501abfa61	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 17:36:51.815159+00	
00000000-0000-0000-0000-000000000000	f7730b3d-302a-4f42-9953-605f1f766dda	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 17:36:51.829072+00	
00000000-0000-0000-0000-000000000000	6df7ffd9-98c9-48ab-a999-aa28b5cce396	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 18:55:45.806311+00	
00000000-0000-0000-0000-000000000000	1bf285a4-b581-4788-a833-5e419fe31587	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 18:55:45.824861+00	
00000000-0000-0000-0000-000000000000	3210f16a-662d-49e9-bf8d-2a97cf8e43d7	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 19:00:11.475194+00	
00000000-0000-0000-0000-000000000000	ba172da8-f4d3-4a78-a5f0-cb28a8a6003d	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 19:00:11.477505+00	
00000000-0000-0000-0000-000000000000	5262844a-8e89-4413-89f7-06df640b2b3d	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-11-04 09:52:11.164998+00	
00000000-0000-0000-0000-000000000000	6aaea9cf-ac37-4ab4-9dea-46fbdd0c817e	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-04 09:52:27.158416+00	
00000000-0000-0000-0000-000000000000	27a4521b-85ac-4c6c-977b-1e45bc4c36d8	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-04 09:52:27.161111+00	
00000000-0000-0000-0000-000000000000	82b4bbf5-4851-4fe1-b298-4b516e69597e	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-04 10:52:33.597025+00	
00000000-0000-0000-0000-000000000000	64e0fdf6-c170-4431-bfe5-2922191e5cd9	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-04 10:52:33.617659+00	
00000000-0000-0000-0000-000000000000	fb7b1a4b-09bf-415d-8a86-7acb8bcc030b	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-04 12:44:27.005858+00	
00000000-0000-0000-0000-000000000000	32d2939b-49ea-4251-b4b8-b38bdd500090	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-04 12:44:27.017295+00	
00000000-0000-0000-0000-000000000000	ee0f5632-f3e6-48da-89f8-29e13b17e6f9	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-04 12:44:45.131207+00	
00000000-0000-0000-0000-000000000000	af1e507b-9ce8-4ceb-a334-19684599e9a0	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-04 12:44:45.132236+00	
00000000-0000-0000-0000-000000000000	cbe85999-d95b-4c67-859f-150fa37cfd51	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-04 13:23:23.56806+00	
00000000-0000-0000-0000-000000000000	781115aa-6e21-4d81-bce2-542801ba2d67	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-04 13:23:23.58566+00	
00000000-0000-0000-0000-000000000000	6adbc2f3-25b7-4635-8c57-846e214127e8	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-04 15:14:38.229669+00	
00000000-0000-0000-0000-000000000000	1338b3b7-e1d6-4b70-bcf4-fa572f04f1d6	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-04 15:14:38.237124+00	
00000000-0000-0000-0000-000000000000	23519252-bd08-44ed-84a8-0675480ffb98	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-04 22:07:03.704516+00	
00000000-0000-0000-0000-000000000000	86de4c31-4445-47e0-b2b9-1d7bbb663248	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-04 22:07:03.726772+00	
00000000-0000-0000-0000-000000000000	8d0b5f29-f9d2-46f7-8b64-4ed8e8038373	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-04 23:06:33.046338+00	
00000000-0000-0000-0000-000000000000	8cd8aa63-457f-424a-84df-5c54910bf70e	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-04 23:06:33.061042+00	
00000000-0000-0000-0000-000000000000	5f638624-11c9-4084-80e0-aade7a04710d	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-05 12:08:04.55482+00	
00000000-0000-0000-0000-000000000000	d324761c-aeff-4202-bd53-9a167f7b29c1	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-05 12:08:04.567671+00	
00000000-0000-0000-0000-000000000000	297657ac-dca5-4e4e-ab77-c96ea352a5fe	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 10:55:16.139432+00	
00000000-0000-0000-0000-000000000000	1317b232-4c4b-46a7-97c3-79dd61299a2a	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 10:55:16.162743+00	
00000000-0000-0000-0000-000000000000	2af959bd-7288-410e-8573-32af36df6db4	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 11:25:50.756964+00	
00000000-0000-0000-0000-000000000000	9a8995a5-7a61-4d55-8740-1a9fa9256d28	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 11:25:50.768905+00	
00000000-0000-0000-0000-000000000000	58b54cc9-c5a4-4f99-9c43-735cd1750d1b	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 13:47:43.251308+00	
00000000-0000-0000-0000-000000000000	d5bf5d7b-8478-4eb1-9912-d9922ed31dae	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 13:47:43.26899+00	
00000000-0000-0000-0000-000000000000	7600e11d-4a52-4c12-984c-1cf1b189fc94	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 20:00:38.952434+00	
00000000-0000-0000-0000-000000000000	d9ff1969-f52e-44ce-8725-8612ce70e022	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 20:00:38.983523+00	
00000000-0000-0000-0000-000000000000	ba359852-983e-497f-8b3c-1e4da49b4404	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 21:02:04.835877+00	
00000000-0000-0000-0000-000000000000	dabd5c4d-56c7-4484-a5e9-d71fba9f9284	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 21:02:04.848459+00	
00000000-0000-0000-0000-000000000000	64971849-1016-40a7-9024-b71794c1698d	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 22:09:18.537382+00	
00000000-0000-0000-0000-000000000000	79e62250-77dc-427d-a7f8-2f2eb1f3faee	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 22:09:18.556303+00	
00000000-0000-0000-0000-000000000000	678d653c-35a5-4b98-bdb3-24925e4db40c	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 22:45:52.027504+00	
00000000-0000-0000-0000-000000000000	69e9c46d-065b-4423-81a8-246aa93c4668	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 22:45:52.041137+00	
00000000-0000-0000-0000-000000000000	d056e116-11cf-4e23-9876-ed6dc804b1e2	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 23:18:49.936174+00	
00000000-0000-0000-0000-000000000000	e62674ac-3e86-4105-a1c2-8da51c7f1cd8	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 23:18:49.952938+00	
00000000-0000-0000-0000-000000000000	7fc630b9-eefd-4933-8d5f-7ba9230569fe	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-11-06 23:26:58.054849+00	
00000000-0000-0000-0000-000000000000	2e19010d-7ec8-4c53-a55f-b695e7697f72	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-11-06 23:31:11.125158+00	
00000000-0000-0000-0000-000000000000	c265943c-3b0b-42f0-aac3-cf19611d04dc	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 23:33:19.398194+00	
00000000-0000-0000-0000-000000000000	466a8185-efaf-4b8c-b08b-042b16742011	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-06 23:33:19.3993+00	
00000000-0000-0000-0000-000000000000	34a62ea2-27bb-4973-a81d-9763bb2be52a	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 00:20:57.656701+00	
00000000-0000-0000-0000-000000000000	2bca5fa7-3852-4a12-b582-9df76012dfa3	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 00:20:57.669669+00	
00000000-0000-0000-0000-000000000000	e4f69e22-a4e9-4266-b79d-fed484d8aaaa	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 01:05:05.189091+00	
00000000-0000-0000-0000-000000000000	5c3a91c2-17b5-4902-a84b-81cd60224e48	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 01:05:05.200185+00	
00000000-0000-0000-0000-000000000000	d441d625-d976-469a-9e0e-48ac1f0a94e0	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 01:35:23.563843+00	
00000000-0000-0000-0000-000000000000	98009a80-db37-4aa9-be7c-0b3e5b195f42	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 01:35:23.576919+00	
00000000-0000-0000-0000-000000000000	78158aa6-8652-4232-989b-0592f3b480b3	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 10:10:24.052869+00	
00000000-0000-0000-0000-000000000000	60d702c2-aa04-4da8-a893-0ad6c5f6576c	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 10:10:24.07086+00	
00000000-0000-0000-0000-000000000000	b5210278-e2e6-4d9c-affc-80f9f55fdf9c	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-11-07 10:13:00.545079+00	
00000000-0000-0000-0000-000000000000	a8787dac-f4c5-4429-8d8b-8e1c0d45bca6	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-11-07 10:15:25.037149+00	
00000000-0000-0000-0000-000000000000	270abe58-60dc-4677-b634-a97182b71474	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 10:28:00.570746+00	
00000000-0000-0000-0000-000000000000	f3147c7a-c96a-4625-9abc-b842115c095e	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 10:28:00.576708+00	
00000000-0000-0000-0000-000000000000	74a521d4-d11e-421d-92c0-677cf973ff22	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 12:58:46.654543+00	
00000000-0000-0000-0000-000000000000	d4d9090b-5568-4973-a426-c3ebddcac81b	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 12:58:46.690327+00	
00000000-0000-0000-0000-000000000000	1085d58a-a5f9-413d-b01d-c749e6f46d2a	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 17:25:31.984622+00	
00000000-0000-0000-0000-000000000000	e7e6bd86-002b-4f74-aacf-f2ea10c93f97	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 17:25:32.003482+00	
00000000-0000-0000-0000-000000000000	4fc6ea98-f98d-4ccd-9871-d15e781285ab	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 20:10:17.54571+00	
00000000-0000-0000-0000-000000000000	bde50ce6-d90b-4e41-b338-f90b757b432a	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 20:10:17.563322+00	
00000000-0000-0000-0000-000000000000	56e8c17b-5cd6-4378-8d30-8b961c0dec76	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 21:23:26.498858+00	
00000000-0000-0000-0000-000000000000	d13d86d2-87a3-445f-815d-23a2740947f5	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 21:23:26.522528+00	
00000000-0000-0000-0000-000000000000	0cd941f8-0af6-4028-85cf-8413d57303ce	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 22:13:34.985034+00	
00000000-0000-0000-0000-000000000000	5bc80ccf-7970-43ef-bab9-19a64d56d522	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 22:13:35.005715+00	
00000000-0000-0000-0000-000000000000	3b004c46-366e-4bc3-9e1d-ff6868fe3340	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 23:11:36.291457+00	
00000000-0000-0000-0000-000000000000	bed5005a-7f91-48ea-9c89-553938c03cea	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 23:11:36.310408+00	
00000000-0000-0000-0000-000000000000	cb5b9b1d-2af9-499f-9d81-2b7934b0f9f1	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 23:38:03.901773+00	
00000000-0000-0000-0000-000000000000	125f1b94-3a04-4099-b778-594188cb6a56	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-07 23:38:03.91431+00	
00000000-0000-0000-0000-000000000000	dc0594ec-d113-4415-a877-72e3ee0309cd	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 00:24:01.915736+00	
00000000-0000-0000-0000-000000000000	e38bbda7-6a7c-4aa1-bf53-f9158fcd10fe	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 00:24:01.93026+00	
00000000-0000-0000-0000-000000000000	c651e5e6-6edb-4d42-a124-ba3b43809955	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 00:42:14.179975+00	
00000000-0000-0000-0000-000000000000	d545aad8-9671-477b-9e1f-b0929e1e0a2b	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 00:42:14.184374+00	
00000000-0000-0000-0000-000000000000	b2e9f4f4-be54-4c74-b970-1fc20933bf93	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 00:42:19.181357+00	
00000000-0000-0000-0000-000000000000	66062f4e-db2a-41a6-ab28-e692feffcd1f	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 00:42:19.183368+00	
00000000-0000-0000-0000-000000000000	8c3376bd-4d72-458a-8dac-24a483a9a002	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 00:54:18.97304+00	
00000000-0000-0000-0000-000000000000	d57d18b0-4631-45e2-a923-8a3c8b71fc52	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 00:54:18.993578+00	
00000000-0000-0000-0000-000000000000	2a6ec877-157f-4b24-a69c-4b42f5a79321	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 01:52:24.571288+00	
00000000-0000-0000-0000-000000000000	7b4dd3d8-299f-4d43-aeac-cc212f179859	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 01:52:24.589089+00	
00000000-0000-0000-0000-000000000000	0c007dad-fef9-4063-af81-2c343119a882	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 02:08:11.098438+00	
00000000-0000-0000-0000-000000000000	0b8e11ae-f0f7-439a-bd91-12285f24c1eb	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 02:08:11.112067+00	
00000000-0000-0000-0000-000000000000	7ed14aef-e9d8-4453-8a93-f9f5f52f7424	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 10:13:01.277405+00	
00000000-0000-0000-0000-000000000000	5c7cfe69-9ec9-4c78-8665-029e2d8cd50b	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 10:13:01.305399+00	
00000000-0000-0000-0000-000000000000	8e996a9b-76a7-4df0-bb61-9ef6b7d6a099	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 10:51:04.231774+00	
00000000-0000-0000-0000-000000000000	c30eea52-0268-4333-8876-0d883f2da83d	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 10:51:04.238638+00	
00000000-0000-0000-0000-000000000000	bbf254b1-4775-4abd-8538-5d0306429aca	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 13:34:19.385039+00	
00000000-0000-0000-0000-000000000000	1a035683-d86b-4338-99bc-73ec32d12486	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 13:34:19.398593+00	
00000000-0000-0000-0000-000000000000	76a5c001-7e5d-430e-98ef-9cd16c46a7a7	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 13:46:21.958604+00	
00000000-0000-0000-0000-000000000000	4733a22f-3451-43c5-8986-78f89dba135a	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 13:46:21.968576+00	
00000000-0000-0000-0000-000000000000	ae4babd4-53be-4216-b1b2-fbc293776cd8	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 14:44:48.565211+00	
00000000-0000-0000-0000-000000000000	1a3826f7-461d-4c72-a918-db20297ff831	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 14:44:48.584149+00	
00000000-0000-0000-0000-000000000000	bcd52a86-9d25-4c8a-86b7-faeb757891e3	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 15:56:16.056613+00	
00000000-0000-0000-0000-000000000000	2a78168c-620d-46ae-a404-a70c589182ab	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 15:56:16.078735+00	
00000000-0000-0000-0000-000000000000	aafc4172-adfd-441c-b09e-0364a81d41d8	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 21:27:30.785141+00	
00000000-0000-0000-0000-000000000000	5fac83d8-604f-4af5-b2e6-c94b5a4a8e8d	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-08 21:27:30.814676+00	
00000000-0000-0000-0000-000000000000	fae857b1-f62d-4f67-a12f-1c506a1dec80	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-09 08:51:10.403624+00	
00000000-0000-0000-0000-000000000000	6410f2a8-e786-4a3c-9844-13ea2bb1816a	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-09 08:51:10.42864+00	
00000000-0000-0000-0000-000000000000	515650e0-0267-4085-b894-d7fa8fc8b83c	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-09 10:01:34.112493+00	
00000000-0000-0000-0000-000000000000	1d71e4d6-0f9f-41ee-9172-35c690e187b8	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-09 10:01:34.12396+00	
00000000-0000-0000-0000-000000000000	58c21bea-d10f-4f9d-9dec-fcd47682a36a	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-09 12:09:45.715566+00	
00000000-0000-0000-0000-000000000000	9ac7e359-fc95-466b-bf05-5ea430db3bc1	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-09 12:09:45.729612+00	
00000000-0000-0000-0000-000000000000	a724fdda-3410-444c-b901-40a729af83dd	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-09 14:31:53.87208+00	
00000000-0000-0000-0000-000000000000	8e0e95d2-e0ac-4b5e-8837-5c02e05911b3	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-09 14:31:53.890667+00	
00000000-0000-0000-0000-000000000000	4ce6c0c3-0ae6-436c-913a-cf8b25ca9b90	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-10 12:02:03.411299+00	
00000000-0000-0000-0000-000000000000	3acb4ac6-9ce4-4c91-8c57-aa2919d8e7fc	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-10 12:02:03.433036+00	
00000000-0000-0000-0000-000000000000	ef0a2d76-5da4-4fc1-a097-97a3ae15921e	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-11-10 12:07:09.929325+00	
00000000-0000-0000-0000-000000000000	b680ee0e-990c-4f04-b768-2b4f05114df3	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-10 13:56:24.816646+00	
00000000-0000-0000-0000-000000000000	ec511eba-be32-4587-b43f-981898fcaa45	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-10 13:56:24.84007+00	
00000000-0000-0000-0000-000000000000	41447d73-11ef-4873-a2f5-29886481e557	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-10 14:15:39.170844+00	
00000000-0000-0000-0000-000000000000	cb199738-c613-4001-8db5-045201c70834	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-10 14:15:39.178392+00	
00000000-0000-0000-0000-000000000000	535bc6dd-f35b-4cff-bf95-0964cba293c4	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-11 03:48:10.309318+00	
00000000-0000-0000-0000-000000000000	9ae57569-379f-4c6e-94c2-afab6fa1f389	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-11 03:48:10.336451+00	
00000000-0000-0000-0000-000000000000	34037d67-6208-4110-a998-593613b88bc6	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-11 13:26:05.159987+00	
00000000-0000-0000-0000-000000000000	d8616d14-8e90-4c81-8a03-fd6a39323e13	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-11 13:26:05.188645+00	
00000000-0000-0000-0000-000000000000	c7b99e2d-ce4b-4700-bec8-db35dfd0e0cd	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-11 13:35:21.9345+00	
00000000-0000-0000-0000-000000000000	1681e84b-a338-4ef7-ba84-4508d79b7a40	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-11 13:35:21.945317+00	
00000000-0000-0000-0000-000000000000	3f19c5be-e526-42af-8ca7-ea70773ce493	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-11 15:39:25.167879+00	
00000000-0000-0000-0000-000000000000	aab7da87-9145-44ac-9f5e-1ac5739710c5	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-11 15:39:25.187375+00	
00000000-0000-0000-0000-000000000000	5ecad2da-1ec9-4f39-949f-be33e8e2069e	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-11 20:56:23.825229+00	
00000000-0000-0000-0000-000000000000	751f10cf-4e7c-4ef9-abb4-a9213a75e112	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-11 20:56:23.85586+00	
00000000-0000-0000-0000-000000000000	d67e5fd2-4b11-4fd8-a307-d87679b394dc	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-12 09:38:05.088276+00	
00000000-0000-0000-0000-000000000000	d412ba12-526e-4ff4-9ed7-7bcf829b42e2	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-12 11:59:10.778035+00	
00000000-0000-0000-0000-000000000000	5bc9efb5-3881-4c44-a299-994fac857a78	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-12 11:59:10.811748+00	
00000000-0000-0000-0000-000000000000	4111b2b7-7c1f-41b6-bc68-22e8ae843cec	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-12 12:57:35.872272+00	
00000000-0000-0000-0000-000000000000	e960b1e8-e45c-4e7f-8c24-af6e3e5930be	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-12 12:57:35.891453+00	
00000000-0000-0000-0000-000000000000	cdc7685f-4a6d-431c-a294-717fa6942b97	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-12 13:55:58.160398+00	
00000000-0000-0000-0000-000000000000	7c35fe38-6a08-46bc-bed0-b4a705817e97	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-12 13:55:58.175621+00	
00000000-0000-0000-0000-000000000000	00c22791-830b-448b-81cf-99c208ca0668	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-12 14:55:10.448188+00	
00000000-0000-0000-0000-000000000000	25a4d00c-f357-4e10-a229-fff71f859b99	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-12 14:55:10.471726+00	
00000000-0000-0000-0000-000000000000	d327e27a-0722-4ec8-b26e-5371f9db4086	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-12 15:12:30.67496+00	
00000000-0000-0000-0000-000000000000	04ed984b-57cb-4631-a49e-ab8c9a4ee1a2	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-12 15:12:30.686117+00	
00000000-0000-0000-0000-000000000000	f6c38698-539e-4311-8381-ebc73cd2c1f3	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 10:52:32.306857+00	
00000000-0000-0000-0000-000000000000	37d9c8af-e09b-4130-8598-e1c592b03df5	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 10:52:32.332878+00	
00000000-0000-0000-0000-000000000000	690b16c0-b6d8-4c63-9374-c79fec4fa42f	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 12:13:53.820721+00	
00000000-0000-0000-0000-000000000000	abfe2d30-387d-4605-9be1-60789f2ef315	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 12:13:53.843381+00	
00000000-0000-0000-0000-000000000000	525e7142-2692-4664-9d7b-9e3255405869	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 15:16:50.359295+00	
00000000-0000-0000-0000-000000000000	69b3c3b5-5f3a-49ae-8105-4b5d551821f4	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 15:16:50.37199+00	
00000000-0000-0000-0000-000000000000	c6fe513a-b2e4-4458-9102-b5c56f15eee3	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 15:16:50.591259+00	
00000000-0000-0000-0000-000000000000	73afd0c7-aaeb-4037-a972-1b18dbd44d26	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 15:16:50.710205+00	
00000000-0000-0000-0000-000000000000	8c77a043-f137-4e53-a2b4-33ede639fc6b	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 17:36:51.028039+00	
00000000-0000-0000-0000-000000000000	ab912b47-2397-4404-b378-344e46fe5d97	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 17:36:51.050098+00	
00000000-0000-0000-0000-000000000000	7b5013af-f948-4be2-8dff-7909da04e228	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 18:42:10.162673+00	
00000000-0000-0000-0000-000000000000	cd113905-7ae0-4cee-a976-59b71770aa71	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 18:42:10.175461+00	
00000000-0000-0000-0000-000000000000	a0c84db0-4519-4664-ba31-b8483a17fd27	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 20:01:40.202403+00	
00000000-0000-0000-0000-000000000000	e9540d9e-035c-4178-8b22-44079c94f1ba	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 20:01:40.216008+00	
00000000-0000-0000-0000-000000000000	e4fe04cd-c225-43a4-822d-a2c85ea64b93	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 20:14:24.428981+00	
00000000-0000-0000-0000-000000000000	486a7ba7-2d54-4778-b597-3c3d5058635b	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 20:14:24.435337+00	
00000000-0000-0000-0000-000000000000	e3d6db0c-98e6-4f39-89fd-a63d65f3389c	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 21:24:05.349469+00	
00000000-0000-0000-0000-000000000000	a2d4c311-b7c5-4a5e-9a4f-18ded8ee8179	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 21:24:05.368314+00	
00000000-0000-0000-0000-000000000000	3253a3e5-cfc5-4dbc-abe6-45a117de9caa	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 22:22:29.74005+00	
00000000-0000-0000-0000-000000000000	7923ffb0-3d20-4464-b7ad-9ee6ff38e6a5	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 22:22:29.753312+00	
00000000-0000-0000-0000-000000000000	596cea76-2369-4503-8699-6d7e0b392746	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 23:20:47.303405+00	
00000000-0000-0000-0000-000000000000	0e424d73-104c-499d-994c-f2b0957056bb	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-13 23:20:47.329823+00	
00000000-0000-0000-0000-000000000000	ca0c3afb-161c-417a-999e-8f1b43741786	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-14 08:46:50.093942+00	
00000000-0000-0000-0000-000000000000	e6070a6c-f8f4-4df3-bda8-5d3e19e36911	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-14 08:46:50.126477+00	
00000000-0000-0000-0000-000000000000	26c8d2f2-118f-4651-86f3-f1a6e6866efc	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-14 12:32:34.144853+00	
00000000-0000-0000-0000-000000000000	e6655795-c44b-49ea-afdc-17218df49972	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-14 12:32:34.167181+00	
00000000-0000-0000-0000-000000000000	5d8b50de-99e3-4fcd-bbbf-6a5e68bdc213	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-14 18:31:00.976167+00	
00000000-0000-0000-0000-000000000000	a85ec6ef-b7c5-405c-94b9-77adb2a0f7d1	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-14 18:31:01.002811+00	
00000000-0000-0000-0000-000000000000	023d227f-ad54-4eb2-bf3f-ce2d6b72b8be	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-15 10:21:54.62233+00	
00000000-0000-0000-0000-000000000000	0aaca152-2924-4e79-bdda-618ea48a77f1	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-15 10:21:54.642905+00	
00000000-0000-0000-0000-000000000000	969007cc-d1cf-447d-8c0d-60bc55d87838	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-15 11:25:41.37552+00	
00000000-0000-0000-0000-000000000000	274e3ca8-b7fa-4546-8c05-baa3632215db	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-15 11:25:41.396209+00	
00000000-0000-0000-0000-000000000000	ca60fe7d-a135-4d8c-a43e-e9f89dd9ca16	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-15 11:55:33.708659+00	
00000000-0000-0000-0000-000000000000	5fcdd824-e629-43eb-bbbb-c67fa031a962	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-15 11:55:33.726901+00	
00000000-0000-0000-0000-000000000000	ff169a1b-2e42-4fe1-afe2-0bcc19651dcd	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-15 14:44:21.689438+00	
00000000-0000-0000-0000-000000000000	3c1512dc-be5b-4b28-b489-0a26f16c58e1	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-15 14:44:21.707075+00	
00000000-0000-0000-0000-000000000000	ae5474ba-73bd-42b5-b5b5-d501e45034b8	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-15 16:22:15.819391+00	
00000000-0000-0000-0000-000000000000	739b3548-1a04-47fe-a116-83d0f44bbc5d	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-15 16:22:15.841905+00	
00000000-0000-0000-0000-000000000000	4379086f-efd4-414d-9345-2c857ea578ec	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-16 09:39:19.875533+00	
00000000-0000-0000-0000-000000000000	9230f510-f8aa-4d4f-91fc-c92b6c461a90	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-16 09:39:19.903217+00	
00000000-0000-0000-0000-000000000000	a744db5d-0da6-4cf2-a802-1bb02c98c239	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-16 09:39:19.966484+00	
00000000-0000-0000-0000-000000000000	8f5d64e3-36fd-46d5-a120-2165983f2cf9	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-16 15:24:59.107848+00	
00000000-0000-0000-0000-000000000000	a1239b53-4ffa-44a4-ac3e-df21dd4bd849	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-16 15:24:59.135005+00	
00000000-0000-0000-0000-000000000000	3ec38ae7-60dc-4355-a011-33d9e6613cbe	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-16 15:50:01.30281+00	
00000000-0000-0000-0000-000000000000	fa429b7b-d4bc-4476-acb8-bc731071f89d	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-16 15:50:01.317187+00	
00000000-0000-0000-0000-000000000000	6529dbad-f542-4d65-85b1-2167e4e88922	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-16 20:01:20.231395+00	
00000000-0000-0000-0000-000000000000	d41b1f59-30b9-4909-aa14-256c031fb933	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-16 20:01:20.250255+00	
00000000-0000-0000-0000-000000000000	efb17a93-68e6-47bc-8e54-6cae71a1d377	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-16 20:18:46.574461+00	
00000000-0000-0000-0000-000000000000	a76f6f65-2aed-47da-bb19-b0658ff2e5e1	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-16 20:18:46.587068+00	
00000000-0000-0000-0000-000000000000	9e440e0c-aeef-4979-b482-30e16c1c69a4	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 10:38:53.798398+00	
00000000-0000-0000-0000-000000000000	3f28bb5c-77b8-47f2-a9c4-fcdfabc72e3f	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 10:38:53.829393+00	
00000000-0000-0000-0000-000000000000	8b2ff1ae-e05e-4c14-8c4b-3c56516cca14	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 10:49:26.788051+00	
00000000-0000-0000-0000-000000000000	2c69da1e-893f-4dc4-bf18-166522c542b9	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 10:49:26.7992+00	
00000000-0000-0000-0000-000000000000	fa4fd61e-b964-4ff9-9087-8195e9f7d223	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 11:11:14.595609+00	
00000000-0000-0000-0000-000000000000	b8228556-66ab-4553-815a-5a4dd9a05be2	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 11:11:14.602611+00	
00000000-0000-0000-0000-000000000000	b09a25e3-75e2-4d3e-9ad3-b86265b61f9a	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 11:45:23.496433+00	
00000000-0000-0000-0000-000000000000	01590af7-902e-4c6c-a3e1-766d693ca219	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 11:45:23.508619+00	
00000000-0000-0000-0000-000000000000	ba495d18-f371-4680-9365-df4075db460d	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 11:49:55.107116+00	
00000000-0000-0000-0000-000000000000	352e8c45-c8a7-44a3-86b1-852a878b2fc7	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 11:49:55.11062+00	
00000000-0000-0000-0000-000000000000	7cc395c1-8dc9-4fa8-80f0-f505959cd54b	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 11:55:30.583443+00	
00000000-0000-0000-0000-000000000000	5828ed23-91c9-4563-a790-68568a5fbc93	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 11:55:30.593927+00	
00000000-0000-0000-0000-000000000000	259c0637-1053-47aa-a1c8-6f74ed52a3e5	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 12:44:21.486006+00	
00000000-0000-0000-0000-000000000000	7f0e3aa4-62d3-47b6-8089-009519fdfa6c	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 12:44:21.499169+00	
00000000-0000-0000-0000-000000000000	de57f169-7e87-49fa-b22b-9655617c76f0	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 12:57:52.50595+00	
00000000-0000-0000-0000-000000000000	e10921e8-910e-4bcd-a6f6-9c07380d679b	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 12:57:52.511001+00	
00000000-0000-0000-0000-000000000000	159b0468-ac89-45aa-b397-993c7a8d530f	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 15:41:48.73452+00	
00000000-0000-0000-0000-000000000000	1208ce87-a81e-4dfe-832b-f57a832eafaa	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 15:41:48.760502+00	
00000000-0000-0000-0000-000000000000	425e2d0e-536a-48e2-90a2-438ba0b024f3	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 15:41:49.649997+00	
00000000-0000-0000-0000-000000000000	5cc7da30-4b9a-4aff-b338-adbd5fad154a	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 15:41:49.651809+00	
00000000-0000-0000-0000-000000000000	89c5a2ae-f3c2-4ef4-8f3b-39904d277e69	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 19:52:52.905474+00	
00000000-0000-0000-0000-000000000000	b9b18e38-fd0b-4201-b9f0-1145c807e5d7	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 19:52:52.934492+00	
00000000-0000-0000-0000-000000000000	dd179a4d-c54c-4e0d-8286-a90068a58a39	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 20:16:36.23537+00	
00000000-0000-0000-0000-000000000000	4418875a-72e0-4e19-bb4f-a648bf5996f4	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 20:16:36.254275+00	
00000000-0000-0000-0000-000000000000	999b4e66-9a6e-441b-b310-f52bb01f487c	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 20:35:44.874734+00	
00000000-0000-0000-0000-000000000000	5a6ecd38-ddf4-4ef7-bfba-648785aa33f5	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-17 20:35:44.89705+00	
00000000-0000-0000-0000-000000000000	ec32552f-a1a2-4c43-a971-9b8295a13d02	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 00:10:27.39484+00	
00000000-0000-0000-0000-000000000000	c838691d-c673-4147-901c-13ac3d05aada	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 00:10:27.423975+00	
00000000-0000-0000-0000-000000000000	7b82eb62-5a94-4794-9679-cc95a34317a4	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 10:10:46.553966+00	
00000000-0000-0000-0000-000000000000	1ebe9fe3-b548-4f26-9f21-3ee934e8b60a	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 10:10:46.577625+00	
00000000-0000-0000-0000-000000000000	e6cb013a-4479-4d7a-ad98-8ef9d46b6b74	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 10:27:43.687776+00	
00000000-0000-0000-0000-000000000000	23f3882b-c3f5-43e7-b616-d436bfbb4ae0	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 10:27:43.695449+00	
00000000-0000-0000-0000-000000000000	097787cc-c26a-4a88-bc9e-825c96506513	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 11:12:17.071861+00	
00000000-0000-0000-0000-000000000000	d72a73ab-e819-4057-8009-d9b06371d6ea	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 11:12:17.081073+00	
00000000-0000-0000-0000-000000000000	ed50a6bb-0ff2-43d7-bba6-8b586e9a424a	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 11:58:08.050995+00	
00000000-0000-0000-0000-000000000000	a4c80d34-2e6d-4f06-8bdc-67622d4b0458	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 11:58:08.062991+00	
00000000-0000-0000-0000-000000000000	45c82e90-f98b-4c6a-8114-f0294a110426	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 12:10:24.801831+00	
00000000-0000-0000-0000-000000000000	d2162cac-88db-4f19-ac7c-bbe24ae8527d	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 12:10:24.810141+00	
00000000-0000-0000-0000-000000000000	78442ead-ad2c-442c-9a3d-1e0587232a2f	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 13:08:26.102963+00	
00000000-0000-0000-0000-000000000000	3f5ec07e-a787-4c7a-9b05-28f151099cd1	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 13:08:26.115675+00	
00000000-0000-0000-0000-000000000000	70b8f277-8fee-4d37-85f1-496dff766e7e	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 14:18:12.127881+00	
00000000-0000-0000-0000-000000000000	890d2849-4572-48ae-bfee-06c3eb133d00	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 14:18:12.152139+00	
00000000-0000-0000-0000-000000000000	ead4974d-c6dd-4ba3-a467-92041e09f180	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 22:04:57.36761+00	
00000000-0000-0000-0000-000000000000	238349f9-5be8-4c2a-9fa9-bb2cc2811072	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-18 22:04:57.39045+00	
00000000-0000-0000-0000-000000000000	268eab6b-ada6-4558-8201-63f42f3045ef	{"action":"login","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-11-19 09:46:54.85736+00	
00000000-0000-0000-0000-000000000000	5055d262-4c0f-4dad-a61b-f5c778dbbf76	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-19 09:48:34.717612+00	
00000000-0000-0000-0000-000000000000	abab5374-8aa6-495c-b369-69c9adb473b6	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-19 09:48:34.719832+00	
00000000-0000-0000-0000-000000000000	12a33007-d1a9-4dbc-bddb-ebca94cab032	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-19 11:55:26.120968+00	
00000000-0000-0000-0000-000000000000	a3f23990-14e1-463b-b231-da59dc699581	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-19 11:55:26.138846+00	
00000000-0000-0000-0000-000000000000	5299ddf0-1bb4-47a1-ac85-384feabf63d1	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-19 14:58:48.123194+00	
00000000-0000-0000-0000-000000000000	3e1923c6-7701-4225-8839-21a1ede0f689	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-19 14:58:48.138776+00	
00000000-0000-0000-0000-000000000000	716972ef-5b1d-4466-bbb3-cde687619ccf	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-19 19:27:29.731978+00	
00000000-0000-0000-0000-000000000000	be47c939-f3d8-426a-b17f-4b0fa95448df	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-19 19:27:29.749258+00	
00000000-0000-0000-0000-000000000000	51aed7be-5c79-433f-8c1e-50da52c3c70c	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-19 21:13:14.573415+00	
00000000-0000-0000-0000-000000000000	d6cbff07-9a68-4f2d-909f-213c0ead67b5	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-19 21:13:14.58792+00	
00000000-0000-0000-0000-000000000000	f5ae596e-1c68-4d77-87bc-06760b4830a8	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-20 10:08:31.658135+00	
00000000-0000-0000-0000-000000000000	c80ab900-fb2c-4fbd-af78-05a774f2bf7a	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-20 10:08:31.691425+00	
00000000-0000-0000-0000-000000000000	44eddf68-5749-43fe-be8a-5278f51bdc9d	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-22 10:26:41.586351+00	
00000000-0000-0000-0000-000000000000	4ef9249c-e618-4e93-94b3-dc8051f2bb11	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-22 10:26:41.613079+00	
00000000-0000-0000-0000-000000000000	eed7fba5-38bf-488a-8ec9-1c16cb73f272	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-22 11:48:34.935099+00	
00000000-0000-0000-0000-000000000000	34516565-0646-40b4-b3f1-895929f44944	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-22 11:48:34.947028+00	
00000000-0000-0000-0000-000000000000	34730538-fcc8-4347-ac91-def848d80b5b	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-22 12:49:56.922151+00	
00000000-0000-0000-0000-000000000000	bd921481-13f3-4774-8415-10d983c171cd	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-22 12:49:56.944704+00	
00000000-0000-0000-0000-000000000000	8196ad67-b9c5-4e41-8d10-683362eee40f	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-22 15:08:15.337834+00	
00000000-0000-0000-0000-000000000000	bc2febf7-49e7-47fb-b497-3512ed99e1ee	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-22 15:08:15.353775+00	
00000000-0000-0000-0000-000000000000	664cdd43-67b2-4888-95df-9d0c1e4ef02b	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-22 20:57:21.699422+00	
00000000-0000-0000-0000-000000000000	4d4304ee-e03c-4cb1-b99d-bc1d6146cad9	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-22 20:57:21.718826+00	
00000000-0000-0000-0000-000000000000	01e843fb-f623-4826-81c3-3f3a2fe00281	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-23 09:43:40.856685+00	
00000000-0000-0000-0000-000000000000	895f2585-e668-4866-bdff-de882a05e82f	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-23 09:43:40.884706+00	
00000000-0000-0000-0000-000000000000	3f448934-c83b-40aa-9566-c8c66aefdf61	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-23 11:56:34.659878+00	
00000000-0000-0000-0000-000000000000	c86183c7-ecab-4753-aa5c-019eb5588fc4	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-23 11:56:34.685454+00	
00000000-0000-0000-0000-000000000000	5c40f7b3-bdb3-4a0e-939d-10616f06f4ff	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-23 13:58:51.603867+00	
00000000-0000-0000-0000-000000000000	be8ac5a5-33e6-48f4-b3c2-ef5de5691ba4	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-23 13:58:51.616786+00	
00000000-0000-0000-0000-000000000000	aa0e2c0a-28e8-479d-ac3a-6fb3080fcb36	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-23 15:21:46.536072+00	
00000000-0000-0000-0000-000000000000	76b1ee86-77cf-4fa1-99f5-6a7552d14424	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-23 15:21:46.558004+00	
00000000-0000-0000-0000-000000000000	f969ffc8-c5fd-4d18-a417-f51db129c53b	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-24 08:31:47.204632+00	
00000000-0000-0000-0000-000000000000	0a002146-fc0c-4b6c-a43a-266c63ddc180	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-24 08:31:47.236863+00	
00000000-0000-0000-0000-000000000000	b340ca38-8cc3-4fb2-a515-bbdd946c3ce1	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-24 13:15:21.116471+00	
00000000-0000-0000-0000-000000000000	01a3a6ab-2ca4-44fa-818b-38d9796b1dea	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-24 13:15:21.137656+00	
00000000-0000-0000-0000-000000000000	b5d93cd2-d755-42c4-bc86-49b71f933dde	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-24 13:21:54.03179+00	
00000000-0000-0000-0000-000000000000	e793984c-ad78-40d7-ab57-fa08355da793	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-24 13:21:54.046001+00	
00000000-0000-0000-0000-000000000000	a51f2890-4ff6-4278-b0f1-6bcad07d961c	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-24 14:43:04.429622+00	
00000000-0000-0000-0000-000000000000	d31af6c1-0899-4104-9c48-bcc160f77d78	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-24 14:43:04.445885+00	
00000000-0000-0000-0000-000000000000	d4358832-1ccd-43d5-a21e-1e1a3a3636ed	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-25 09:43:55.172334+00	
00000000-0000-0000-0000-000000000000	3a1aca0c-e29d-4ee3-befe-8213c04eb2e8	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-25 09:43:55.200635+00	
00000000-0000-0000-0000-000000000000	66be027d-28dd-4de8-8701-b5279722d056	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-25 13:27:49.423468+00	
00000000-0000-0000-0000-000000000000	e62297fd-ca99-4730-9c9a-995c8832dda8	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-25 13:27:49.438392+00	
00000000-0000-0000-0000-000000000000	0219c560-6e3d-43f7-b08b-f791eb49e88f	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-25 14:09:30.56304+00	
00000000-0000-0000-0000-000000000000	c7736ad6-bd88-4211-9fbf-d154ddcc3b1c	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-25 14:09:30.577056+00	
00000000-0000-0000-0000-000000000000	f5246c8e-f8df-4ced-820a-8a34fafb4fc1	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-25 18:09:31.533486+00	
00000000-0000-0000-0000-000000000000	8fb9da3e-a360-4105-9ea6-a0fc3dd6abd2	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-25 18:09:31.559182+00	
00000000-0000-0000-0000-000000000000	7a767550-ae57-4502-9030-4b9a949d37e6	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-25 18:51:22.746514+00	
00000000-0000-0000-0000-000000000000	90d7db88-4e08-40ee-9b00-f3d28dfbed7a	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-25 18:51:22.753927+00	
00000000-0000-0000-0000-000000000000	827c961c-6115-4cef-a71a-7ad6ae2a54e1	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-25 19:34:34.618265+00	
00000000-0000-0000-0000-000000000000	414e930b-1668-49ee-b150-839cff7fb096	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-25 19:34:34.629826+00	
00000000-0000-0000-0000-000000000000	0f7f4d2f-4b3d-4a20-8908-b103cbb9fad9	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-25 19:46:06.186752+00	
00000000-0000-0000-0000-000000000000	dd563504-dc21-4738-b65c-04ace68041f4	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-25 19:46:06.200471+00	
00000000-0000-0000-0000-000000000000	0d32023a-960e-4ed8-a736-5aa153592a61	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-26 09:58:50.491458+00	
00000000-0000-0000-0000-000000000000	361901c5-72ff-4380-92e0-8ce84931e822	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-26 09:58:50.523498+00	
00000000-0000-0000-0000-000000000000	47b6279c-1b2f-4a67-86f9-67f2bb4ee5bc	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-26 13:12:10.384326+00	
00000000-0000-0000-0000-000000000000	3c36d39e-9f31-4213-8952-e1375fb63347	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-26 13:12:10.401894+00	
00000000-0000-0000-0000-000000000000	b39375e7-1732-4c22-bd73-da1efcc1b9b3	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-26 14:18:06.81388+00	
00000000-0000-0000-0000-000000000000	e61b92ca-3aec-4336-8906-5012cf63b6ab	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-26 14:18:06.823789+00	
00000000-0000-0000-0000-000000000000	379789e3-5987-4ff4-9b16-101929a88366	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-26 15:04:20.842943+00	
00000000-0000-0000-0000-000000000000	1c2f04db-eb89-4bfa-a177-5c7b1b34516d	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-26 15:04:20.856295+00	
00000000-0000-0000-0000-000000000000	02e7e602-bd20-4e85-a415-df715590a781	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-26 19:14:27.326078+00	
00000000-0000-0000-0000-000000000000	cb8f5115-aa1b-480c-8517-6f8ff6d1c4c6	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-26 19:14:27.348719+00	
00000000-0000-0000-0000-000000000000	46d30789-7f05-4332-ac34-c94d6adff7a8	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-26 20:41:45.420646+00	
00000000-0000-0000-0000-000000000000	a00686b6-6c17-41fe-bdea-fa729155a43b	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-26 20:41:45.442513+00	
00000000-0000-0000-0000-000000000000	dddf1396-b182-414e-a9f6-2d43e5f35237	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-28 07:36:46.125704+00	
00000000-0000-0000-0000-000000000000	50737f4c-8cba-4c7e-975a-4ac96ce47f70	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-28 07:36:46.15397+00	
00000000-0000-0000-0000-000000000000	b0985a61-be50-4015-a575-2dd97e864bd6	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-29 08:14:07.152709+00	
00000000-0000-0000-0000-000000000000	ea302054-f448-4f26-897d-5309a7534b26	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-29 08:14:07.1835+00	
00000000-0000-0000-0000-000000000000	b420b5ef-612a-451c-846e-267d60a3ccb4	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-29 09:12:10.327437+00	
00000000-0000-0000-0000-000000000000	3118367b-1c61-4105-aa8a-29dcf7dea701	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-29 09:12:10.340765+00	
00000000-0000-0000-0000-000000000000	2713bbe5-fa6a-4c16-ae84-e17ca8d4b869	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-29 10:48:01.12719+00	
00000000-0000-0000-0000-000000000000	945827ad-7140-48c4-8c82-0848ccda980d	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-29 10:48:01.146859+00	
00000000-0000-0000-0000-000000000000	06486f12-1809-4f34-a413-0108aaec0167	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-29 10:51:34.51917+00	
00000000-0000-0000-0000-000000000000	d48520c7-5505-4b4c-852a-8a843b84f229	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-29 10:51:34.526147+00	
00000000-0000-0000-0000-000000000000	43560ae8-604f-49a4-b226-d95cd2970540	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-29 13:30:06.42058+00	
00000000-0000-0000-0000-000000000000	b39cff4d-a80f-49b9-ab3c-d9599842e489	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-29 13:30:06.442778+00	
00000000-0000-0000-0000-000000000000	57a023b0-77b6-4842-873a-c1c0fa86e939	{"action":"token_refreshed","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-30 10:56:26.265348+00	
00000000-0000-0000-0000-000000000000	b2c7adcf-74c7-4d26-a39c-2a99436c5b6b	{"action":"token_revoked","actor_id":"755c0f15-990a-4e0d-9a1d-03d5de1be7ed","actor_username":"ahsantariq.ar@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-30 10:56:26.292332+00	
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
00000000-0000-0000-0000-000000000000	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	authenticated	authenticated	ahsantariq.ar@gmail.com	$2a$10$3DpBPdcFmLkNWZci/zEWR.H.Ix5zP7oVx3xpELlREmYs/nZzCt8K6	2025-09-25 01:41:16.910245+00	\N		\N		\N			\N	2025-11-19 09:46:54.892263+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2025-09-25 01:41:16.891607+00	2025-11-30 10:56:26.334246+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
755c0f15-990a-4e0d-9a1d-03d5de1be7ed	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	{"sub": "755c0f15-990a-4e0d-9a1d-03d5de1be7ed", "email": "ahsantariq.ar@gmail.com", "email_verified": false, "phone_verified": false}	email	2025-09-25 01:41:16.902915+00	2025-09-25 01:41:16.902965+00	2025-09-25 01:41:16.902965+00	501c84bd-f8a7-4d6c-a523-59fec4dfe401
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
41809255-1f07-4cb5-9b66-2fea3ec22354	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-11-06 23:31:11.126674+00	2025-11-28 07:36:46.19738+00	\N	aal1	\N	2025-11-28 07:36:46.197255	Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0 Mobile/15E148 Safari/604.1	154.81.235.125	\N	\N	\N	\N	\N
abace976-71bb-43b7-8c1f-90555fd1537f	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-11-06 23:26:58.07945+00	2025-11-06 23:26:58.07945+00	\N	aal1	\N	\N	Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0 Mobile/15E148 Safari/604.1	39.63.210.79	\N	\N	\N	\N	\N
9f468faa-65d8-4c54-8ecc-646234a63692	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-11-07 10:15:25.039293+00	2025-11-08 00:42:19.191258+00	\N	aal1	\N	2025-11-08 00:42:19.191155	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36	39.63.252.49	\N	\N	\N	\N	\N
9a029257-5dea-4d1a-bff3-a20351bf6c02	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-10-06 12:35:07.604839+00	2025-10-08 12:22:01.563343+00	\N	aal1	\N	2025-10-08 12:22:01.563238	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36	72.255.39.46	\N	\N	\N	\N	\N
a7703d2c-ea30-47a7-a156-9e9d5d2f286c	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-10-06 12:40:47.668442+00	2025-10-09 13:12:52.523251+00	\N	aal1	\N	2025-10-09 13:12:52.521395	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36	72.255.39.46	\N	\N	\N	\N	\N
3886913b-c444-487f-888d-4dd8b009b031	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-11-07 10:13:00.572724+00	2025-11-07 10:13:00.572724+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36	119.154.229.106	\N	\N	\N	\N	\N
80f5e82e-e991-4c1c-a4ca-80103ca4b1f2	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-10-18 23:24:15.244196+00	2025-10-18 23:24:15.244196+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36	223.123.2.55	\N	\N	\N	\N	\N
3bd3fe27-43bb-48b0-b69d-0bec7f4db67e	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-10-18 23:47:35.079455+00	2025-10-18 23:47:35.079455+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36	223.123.2.55	\N	\N	\N	\N	\N
e22935f4-04fd-4ad1-be69-e0182f5e12b3	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-10-06 12:28:05.072455+00	2025-10-06 12:28:05.072455+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36	72.255.39.46	\N	\N	\N	\N	\N
15afec8e-a869-4276-8e8e-bddfec6a1416	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-10-06 12:28:50.420332+00	2025-10-06 12:28:50.420332+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36	72.255.51.34	\N	\N	\N	\N	\N
e39c8284-9744-4dea-9d0c-57a8c3b90b5e	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-10-06 12:54:55.573203+00	2025-11-25 18:51:22.778152+00	\N	aal1	\N	2025-11-25 18:51:22.777396	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36	175.107.239.186	\N	\N	\N	\N	\N
e6599d19-0a64-427a-aaf0-85d811d2da3f	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-10-18 23:55:30.420211+00	2025-10-18 23:55:30.420211+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36	223.123.2.55	\N	\N	\N	\N	\N
86af5c98-ead8-4df2-9b9c-7b34e06127b0	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-10-18 22:23:42.70077+00	2025-11-29 13:30:06.477792+00	\N	aal1	\N	2025-11-29 13:30:06.477649	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36	154.192.167.103	\N	\N	\N	\N	\N
35ba656d-4d1f-45e0-9c58-8fdea773e3ee	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-11-10 12:07:09.932841+00	2025-11-30 10:56:26.342048+00	\N	aal1	\N	2025-11-30 10:56:26.3419	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36	154.192.167.103	\N	\N	\N	\N	\N
968edd83-f007-47b9-97ed-85aeb6cbfd02	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-10-29 10:54:30.399045+00	2025-11-26 14:18:06.856207+00	\N	aal1	\N	2025-11-26 14:18:06.856033	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36	39.56.55.58	\N	\N	\N	\N	\N
01ec7178-09fc-486b-a96a-75a3f2a8c51e	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-11-19 09:46:54.894335+00	2025-11-19 14:58:48.180505+00	\N	aal1	\N	2025-11-19 14:58:48.180278	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36	39.63.239.211	\N	\N	\N	\N	\N
7794ab33-c4f7-40d2-8ff5-863148ceecf2	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-10-18 21:48:36.085574+00	2025-11-19 19:27:29.793211+00	\N	aal1	\N	2025-11-19 19:27:29.79305	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36	175.107.239.186	\N	\N	\N	\N	\N
9828f57c-c3ba-45a5-8893-278a7f2af2cc	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-11-04 09:52:11.197519+00	2025-11-08 14:44:48.626996+00	\N	aal1	\N	2025-11-08 14:44:48.626885	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36	154.192.167.173	\N	\N	\N	\N	\N
d2e58dcb-1bdd-4d65-97ad-ae4d9e2da191	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-11-03 15:12:01.583699+00	2025-11-08 21:27:30.863105+00	\N	aal1	\N	2025-11-08 21:27:30.862974	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36	154.192.167.173	\N	\N	\N	\N	\N
7a257ef6-c32e-49e4-8575-e06e39100c9f	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	2025-10-27 15:10:20.101336+00	2025-11-16 20:18:46.617133+00	\N	aal1	\N	2025-11-16 20:18:46.616992	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36	175.107.239.186	\N	\N	\N	\N	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
e22935f4-04fd-4ad1-be69-e0182f5e12b3	2025-10-06 12:28:05.093824+00	2025-10-06 12:28:05.093824+00	password	1498b547-8e71-4f4e-8041-f4522412512f
15afec8e-a869-4276-8e8e-bddfec6a1416	2025-10-06 12:28:50.424794+00	2025-10-06 12:28:50.424794+00	password	38473eeb-8642-4157-986d-91ee62beffd1
9a029257-5dea-4d1a-bff3-a20351bf6c02	2025-10-06 12:35:07.630783+00	2025-10-06 12:35:07.630783+00	password	3b6b8698-18ab-45b5-8aaa-a5810056d8ef
a7703d2c-ea30-47a7-a156-9e9d5d2f286c	2025-10-06 12:40:47.672352+00	2025-10-06 12:40:47.672352+00	password	c985fe82-ae1d-4230-8e94-9df054625d86
e39c8284-9744-4dea-9d0c-57a8c3b90b5e	2025-10-06 12:54:55.627129+00	2025-10-06 12:54:55.627129+00	password	3062058b-d717-4f6a-8372-fb3be271b85b
7794ab33-c4f7-40d2-8ff5-863148ceecf2	2025-10-18 21:48:36.129435+00	2025-10-18 21:48:36.129435+00	password	e0504b06-9bd3-480c-aff7-e6a85ab96bfd
86af5c98-ead8-4df2-9b9c-7b34e06127b0	2025-10-18 22:23:42.758127+00	2025-10-18 22:23:42.758127+00	password	a63f52e8-f208-47b8-9e0e-7aa6c93af7a9
80f5e82e-e991-4c1c-a4ca-80103ca4b1f2	2025-10-18 23:24:15.315106+00	2025-10-18 23:24:15.315106+00	password	d8d97140-eb6a-4a16-98cb-42edc474b83c
3bd3fe27-43bb-48b0-b69d-0bec7f4db67e	2025-10-18 23:47:35.109844+00	2025-10-18 23:47:35.109844+00	password	dd1a137f-3f7e-4ada-a54b-4e76df2926ba
e6599d19-0a64-427a-aaf0-85d811d2da3f	2025-10-18 23:55:30.425906+00	2025-10-18 23:55:30.425906+00	password	85b31335-e668-497e-a5b1-a0e99db40322
7a257ef6-c32e-49e4-8575-e06e39100c9f	2025-10-27 15:10:20.198005+00	2025-10-27 15:10:20.198005+00	password	0d62dc06-b56d-4124-876f-7c1e845e8a64
968edd83-f007-47b9-97ed-85aeb6cbfd02	2025-10-29 10:54:30.434695+00	2025-10-29 10:54:30.434695+00	password	6bb15834-27c3-43ca-a046-626d98ea4984
d2e58dcb-1bdd-4d65-97ad-ae4d9e2da191	2025-11-03 15:12:01.61457+00	2025-11-03 15:12:01.61457+00	password	ff7d17a6-851f-4bfc-917e-0423b87663da
9828f57c-c3ba-45a5-8893-278a7f2af2cc	2025-11-04 09:52:11.298435+00	2025-11-04 09:52:11.298435+00	password	c741c5d5-cb50-42b3-9222-dd7bb4f6d68e
abace976-71bb-43b7-8c1f-90555fd1537f	2025-11-06 23:26:58.125457+00	2025-11-06 23:26:58.125457+00	password	fbd82033-f3ad-4e74-b99c-d3bc0a6ba847
41809255-1f07-4cb5-9b66-2fea3ec22354	2025-11-06 23:31:11.133345+00	2025-11-06 23:31:11.133345+00	password	ca3e2733-bd94-496e-93ad-cc2eaaabbb21
3886913b-c444-487f-888d-4dd8b009b031	2025-11-07 10:13:00.662215+00	2025-11-07 10:13:00.662215+00	password	55a22486-01d0-4b0a-a574-796d708b41e8
9f468faa-65d8-4c54-8ecc-646234a63692	2025-11-07 10:15:25.043842+00	2025-11-07 10:15:25.043842+00	password	763f3c45-ccac-416a-bb33-09cc5812e0fe
35ba656d-4d1f-45e0-9c58-8fdea773e3ee	2025-11-10 12:07:09.950448+00	2025-11-10 12:07:09.950448+00	password	6655bb0c-93b6-4648-b2fd-9bea702e080f
01ec7178-09fc-486b-a96a-75a3f2a8c51e	2025-11-19 09:46:55.008693+00	2025-11-19 09:46:55.008693+00	password	a70cbfe7-5fc1-43dd-9033-f9e76211ac99
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
00000000-0000-0000-0000-000000000000	83	goqqyaiqhyk2	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-10-06 12:28:50.421611+00	2025-10-06 12:28:50.421611+00	\N	15afec8e-a869-4276-8e8e-bddfec6a1416
00000000-0000-0000-0000-000000000000	114	d55jg5dgtgug	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-19 14:20:11.379915+00	2025-11-17 10:49:26.800644+00	5y6vcngnuhc2	e39c8284-9744-4dea-9d0c-57a8c3b90b5e
00000000-0000-0000-0000-000000000000	154	a5mzc5gg5msi	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-03 15:12:01.599207+00	2025-11-03 16:18:25.806167+00	\N	d2e58dcb-1bdd-4d65-97ad-ae4d9e2da191
00000000-0000-0000-0000-000000000000	84	evx7wo6fpsjm	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-06 12:35:07.617185+00	2025-10-06 14:18:49.006515+00	\N	9a029257-5dea-4d1a-bff3-a20351bf6c02
00000000-0000-0000-0000-000000000000	85	eb4kzmxvkeav	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-06 12:40:47.669827+00	2025-10-06 14:18:49.025071+00	\N	a7703d2c-ea30-47a7-a156-9e9d5d2f286c
00000000-0000-0000-0000-000000000000	88	k7pyvsohgowt	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-06 14:18:49.026747+00	2025-10-06 15:19:27.979427+00	evx7wo6fpsjm	9a029257-5dea-4d1a-bff3-a20351bf6c02
00000000-0000-0000-0000-000000000000	89	xs5572uv6zad	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-06 15:19:27.994095+00	2025-10-07 10:33:53.075142+00	k7pyvsohgowt	9a029257-5dea-4d1a-bff3-a20351bf6c02
00000000-0000-0000-0000-000000000000	90	l6iaosuaupc6	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-07 10:33:53.10226+00	2025-10-07 11:31:58.74552+00	xs5572uv6zad	9a029257-5dea-4d1a-bff3-a20351bf6c02
00000000-0000-0000-0000-000000000000	91	fykzs6hec4he	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-07 11:31:58.759889+00	2025-10-07 12:30:08.066413+00	l6iaosuaupc6	9a029257-5dea-4d1a-bff3-a20351bf6c02
00000000-0000-0000-0000-000000000000	92	ekcdiz6fk6so	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-07 12:30:08.081134+00	2025-10-07 13:28:26.425818+00	fykzs6hec4he	9a029257-5dea-4d1a-bff3-a20351bf6c02
00000000-0000-0000-0000-000000000000	93	ci5cavpy6oas	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-07 13:28:26.439208+00	2025-10-07 14:43:49.511295+00	ekcdiz6fk6so	9a029257-5dea-4d1a-bff3-a20351bf6c02
00000000-0000-0000-0000-000000000000	94	no5mraanhojt	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-07 14:43:49.523746+00	2025-10-07 20:59:52.759968+00	ci5cavpy6oas	9a029257-5dea-4d1a-bff3-a20351bf6c02
00000000-0000-0000-0000-000000000000	87	jl5ftqlgoohp	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-06 14:18:49.026756+00	2025-10-08 10:56:50.928548+00	eb4kzmxvkeav	a7703d2c-ea30-47a7-a156-9e9d5d2f286c
00000000-0000-0000-0000-000000000000	96	hh6q3mggex7n	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-08 10:56:50.948445+00	2025-10-08 12:18:51.085972+00	jl5ftqlgoohp	a7703d2c-ea30-47a7-a156-9e9d5d2f286c
00000000-0000-0000-0000-000000000000	95	5fciw3ggwspn	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-07 20:59:52.781328+00	2025-10-08 12:22:01.549711+00	no5mraanhojt	9a029257-5dea-4d1a-bff3-a20351bf6c02
00000000-0000-0000-0000-000000000000	98	y7dojvmosxxr	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-10-08 12:22:01.553871+00	2025-10-08 12:22:01.553871+00	5fciw3ggwspn	9a029257-5dea-4d1a-bff3-a20351bf6c02
00000000-0000-0000-0000-000000000000	97	tug4tjweudf7	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-08 12:18:51.105079+00	2025-10-08 15:15:16.134717+00	hh6q3mggex7n	a7703d2c-ea30-47a7-a156-9e9d5d2f286c
00000000-0000-0000-0000-000000000000	99	7rc23b5vaw6t	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-08 15:15:16.148856+00	2025-10-09 11:15:05.91689+00	tug4tjweudf7	a7703d2c-ea30-47a7-a156-9e9d5d2f286c
00000000-0000-0000-0000-000000000000	100	2tttwyfwcxvu	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-09 11:15:05.943653+00	2025-10-09 13:12:52.492547+00	7rc23b5vaw6t	a7703d2c-ea30-47a7-a156-9e9d5d2f286c
00000000-0000-0000-0000-000000000000	101	mwhn7ha6wrgw	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-10-09 13:12:52.50561+00	2025-10-09 13:12:52.50561+00	2tttwyfwcxvu	a7703d2c-ea30-47a7-a156-9e9d5d2f286c
00000000-0000-0000-0000-000000000000	86	wtcozdnox3mm	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-06 12:54:55.594399+00	2025-10-18 22:50:21.740983+00	\N	e39c8284-9744-4dea-9d0c-57a8c3b90b5e
00000000-0000-0000-0000-000000000000	102	ngdrsi3fa2oc	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-18 21:48:36.114463+00	2025-10-18 22:57:24.882485+00	\N	7794ab33-c4f7-40d2-8ff5-863148ceecf2
00000000-0000-0000-0000-000000000000	106	wpmcyeralmky	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-10-18 23:24:15.28379+00	2025-10-18 23:24:15.28379+00	\N	80f5e82e-e991-4c1c-a4ca-80103ca4b1f2
00000000-0000-0000-0000-000000000000	107	jdctbgwwd5tx	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-10-18 23:47:35.090805+00	2025-10-18 23:47:35.090805+00	\N	3bd3fe27-43bb-48b0-b69d-0bec7f4db67e
00000000-0000-0000-0000-000000000000	103	nbnayo3rt4ly	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-18 22:23:42.725453+00	2025-10-18 23:52:16.166057+00	\N	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	109	xeoemh4hsh43	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-10-18 23:55:30.422924+00	2025-10-18 23:55:30.422924+00	\N	e6599d19-0a64-427a-aaf0-85d811d2da3f
00000000-0000-0000-0000-000000000000	104	lrbut25p67kg	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-18 22:50:21.746375+00	2025-10-19 00:01:07.852837+00	wtcozdnox3mm	e39c8284-9744-4dea-9d0c-57a8c3b90b5e
00000000-0000-0000-0000-000000000000	105	k7hfmu3grnzt	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-18 22:57:24.885177+00	2025-10-19 00:28:50.729476+00	ngdrsi3fa2oc	7794ab33-c4f7-40d2-8ff5-863148ceecf2
00000000-0000-0000-0000-000000000000	108	xu4vbm3xjipw	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-18 23:52:16.173231+00	2025-10-19 13:33:40.00547+00	nbnayo3rt4ly	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	111	qc73jj5mdgq5	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-19 00:28:50.7383+00	2025-10-19 14:18:16.612766+00	k7hfmu3grnzt	7794ab33-c4f7-40d2-8ff5-863148ceecf2
00000000-0000-0000-0000-000000000000	110	5y6vcngnuhc2	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-19 00:01:07.854854+00	2025-10-19 14:20:11.378464+00	lrbut25p67kg	e39c8284-9744-4dea-9d0c-57a8c3b90b5e
00000000-0000-0000-0000-000000000000	113	uc5lx2yzzbr4	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-19 14:18:16.618374+00	2025-10-20 08:51:00.445631+00	qc73jj5mdgq5	7794ab33-c4f7-40d2-8ff5-863148ceecf2
00000000-0000-0000-0000-000000000000	115	z6yb4qottesx	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-20 08:51:00.46973+00	2025-10-21 05:56:23.701967+00	uc5lx2yzzbr4	7794ab33-c4f7-40d2-8ff5-863148ceecf2
00000000-0000-0000-0000-000000000000	112	qnldaekvpd2o	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-19 13:33:40.027507+00	2025-10-21 10:42:54.709677+00	xu4vbm3xjipw	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	82	6zjhkxd54uxi	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-10-06 12:28:05.082672+00	2025-10-06 12:28:05.082672+00	\N	e22935f4-04fd-4ad1-be69-e0182f5e12b3
00000000-0000-0000-0000-000000000000	117	6j6w2ia5vfho	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-21 10:42:54.72583+00	2025-10-21 15:54:47.835272+00	qnldaekvpd2o	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	118	m7sfg65blgts	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-21 15:54:47.851087+00	2025-10-21 17:28:51.001687+00	6j6w2ia5vfho	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	119	irmmsufgmjvc	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-21 17:28:51.030941+00	2025-10-21 20:22:31.00387+00	m7sfg65blgts	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	120	vx4t4d74kwvi	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-21 20:22:31.018038+00	2025-10-21 23:34:08.648936+00	irmmsufgmjvc	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	121	oafe2r6b2his	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-21 23:34:08.664943+00	2025-10-22 13:44:49.214472+00	vx4t4d74kwvi	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	123	rwhodcpxczk4	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-27 15:10:20.152252+00	2025-10-27 16:13:08.932151+00	\N	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	124	3wcg67wzgxze	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-27 16:13:08.955422+00	2025-10-27 17:14:33.512881+00	rwhodcpxczk4	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	122	fiqx7i4hccbg	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-22 13:44:49.238638+00	2025-10-29 10:46:32.318617+00	oafe2r6b2his	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	127	fihsssydpvmr	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-29 10:54:30.421842+00	2025-10-29 13:14:00.319175+00	\N	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	128	2vs3fivcvkv4	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-29 13:14:00.341713+00	2025-10-29 14:27:38.404417+00	fihsssydpvmr	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	126	gjyelovae5vg	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-29 10:46:32.342504+00	2025-10-29 20:11:29.482266+00	fiqx7i4hccbg	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	129	c7zcfsjmo325	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-29 14:27:38.420064+00	2025-10-30 11:54:49.296535+00	2vs3fivcvkv4	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	131	6xwboafwiyen	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-30 11:54:49.322583+00	2025-10-30 14:19:44.928991+00	c7zcfsjmo325	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	132	r72ln52pcp6q	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-30 14:19:44.939227+00	2025-10-30 17:32:35.483026+00	6xwboafwiyen	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	130	rl2y27z6k5op	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-29 20:11:29.505536+00	2025-11-02 19:46:38.028115+00	gjyelovae5vg	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	125	lfddmp4ssqcp	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-27 17:14:33.525962+00	2025-10-30 15:53:05.352644+00	3wcg67wzgxze	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	133	urhdcn4cwzgk	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-30 15:53:05.375873+00	2025-10-30 16:51:35.622137+00	lfddmp4ssqcp	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	150	xbjr5sn26yfj	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-03 12:57:51.253133+00	2025-11-03 16:21:48.111387+00	rsr2mixrf5xl	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	135	ykeubsbkbu4a	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-30 17:32:35.491441+00	2025-10-30 18:32:08.347328+00	r72ln52pcp6q	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	153	5cbdoldxygdb	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-03 14:43:21.47999+00	2025-11-03 16:30:58.02865+00	almhien2z2zp	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	136	iqwcriqxeljd	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-30 18:32:08.356733+00	2025-10-30 19:30:38.860894+00	ykeubsbkbu4a	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	137	welqv2wutdc3	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-30 19:30:38.86977+00	2025-10-31 15:50:57.096858+00	iqwcriqxeljd	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	156	5px7jtbknvvc	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-03 16:21:48.1123+00	2025-11-03 17:20:04.465989+00	xbjr5sn26yfj	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	138	e5vosf4hs6tz	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-31 15:50:57.113066+00	2025-10-31 16:49:12.993142+00	welqv2wutdc3	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	139	6d4ljpgmxh2g	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-31 16:49:13.019279+00	2025-11-01 07:54:58.52573+00	e5vosf4hs6tz	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	157	dydz7hskqbx4	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-03 16:30:58.031322+00	2025-11-03 17:36:51.832624+00	5cbdoldxygdb	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	140	dewsxdt4rirv	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-01 07:54:58.544625+00	2025-11-01 11:54:05.529345+00	6d4ljpgmxh2g	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	141	3bdbdvhqyyxo	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-01 11:54:05.543275+00	2025-11-01 12:58:25.886748+00	dewsxdt4rirv	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	159	ozrlov2cnyko	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-03 17:36:51.842138+00	2025-11-03 18:55:45.828845+00	dydz7hskqbx4	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	142	mtdx3mq3wcn5	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-01 12:58:25.899403+00	2025-11-01 18:04:18.682147+00	3bdbdvhqyyxo	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	158	z3ineovxehbp	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-03 17:20:04.489125+00	2025-11-03 19:00:11.480769+00	5px7jtbknvvc	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	134	zhghczijs3l2	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-30 16:51:35.634969+00	2025-11-02 19:58:11.082401+00	urhdcn4cwzgk	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	144	bdekqnhmvn4y	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-02 19:46:38.053875+00	2025-11-02 22:03:10.703354+00	rl2y27z6k5op	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	146	yli6tnmw4lsl	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-02 22:03:10.721633+00	2025-11-02 23:07:36.805875+00	bdekqnhmvn4y	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	152	rbi3czelcar7	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-03 14:40:00.855879+00	2025-11-04 09:52:27.163213+00	m24cl6bvgdan	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	147	2nxmtsh4dsdv	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-02 23:07:36.814823+00	2025-11-03 00:12:25.522051+00	yli6tnmw4lsl	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	145	ncnmumo2jkpo	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-02 19:58:11.090883+00	2025-11-03 01:55:08.718006+00	zhghczijs3l2	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	163	ynaijqvkbann	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-04 09:52:27.167252+00	2025-11-04 10:52:33.61931+00	rbi3czelcar7	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	149	rsr2mixrf5xl	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-03 01:55:08.732078+00	2025-11-03 12:57:51.229243+00	ncnmumo2jkpo	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	148	3albvefp73ez	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-03 00:12:25.531985+00	2025-11-03 13:45:07.183348+00	2nxmtsh4dsdv	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	143	m24cl6bvgdan	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-01 18:04:18.701361+00	2025-11-03 14:40:00.845725+00	mtdx3mq3wcn5	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	151	almhien2z2zp	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-03 13:45:07.195863+00	2025-11-03 14:43:21.473607+00	3albvefp73ez	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	164	tmdnvqa6rd4n	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-04 10:52:33.633892+00	2025-11-04 12:44:27.018812+00	ynaijqvkbann	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	162	txtft2lymjej	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-04 09:52:11.244928+00	2025-11-04 12:44:45.133866+00	\N	9828f57c-c3ba-45a5-8893-278a7f2af2cc
00000000-0000-0000-0000-000000000000	160	zaunqhrgwcib	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-03 18:55:45.845071+00	2025-11-04 13:23:23.587633+00	ozrlov2cnyko	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	165	didoy2xlpfz2	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-04 12:44:27.026486+00	2025-11-04 15:14:38.239996+00	tmdnvqa6rd4n	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	167	6j76qhjablt6	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-04 13:23:23.602338+00	2025-11-04 22:07:03.729404+00	zaunqhrgwcib	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	169	r5emgpo6zpkd	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-04 22:07:03.751497+00	2025-11-04 23:06:33.061993+00	6j76qhjablt6	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	166	lxoj4elxhb34	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-04 12:44:45.134359+00	2025-11-05 12:08:04.581402+00	txtft2lymjej	9828f57c-c3ba-45a5-8893-278a7f2af2cc
00000000-0000-0000-0000-000000000000	170	joiy3w5niupx	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-04 23:06:33.073962+00	2025-11-06 10:55:16.164648+00	r5emgpo6zpkd	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	168	isgznqo6duva	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-04 15:14:38.247277+00	2025-11-06 11:25:50.77029+00	didoy2xlpfz2	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	173	owdqvc6w253v	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-06 11:25:50.779245+00	2025-11-06 13:47:43.270199+00	isgznqo6duva	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	172	a5redlx67hib	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-06 10:55:16.188106+00	2025-11-06 20:00:38.984743+00	joiy3w5niupx	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	175	nfqo5huyfowq	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-06 20:00:39.001376+00	2025-11-06 21:02:04.849986+00	a5redlx67hib	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	155	nlysutkfic6w	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-03 16:18:25.818407+00	2025-11-06 22:09:18.558924+00	a5mzc5gg5msi	d2e58dcb-1bdd-4d65-97ad-ae4d9e2da191
00000000-0000-0000-0000-000000000000	161	ajko2ipazbcq	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-03 19:00:11.482231+00	2025-11-06 22:45:52.042842+00	z3ineovxehbp	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	176	safi6mu6l6n3	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-06 21:02:04.866454+00	2025-11-06 23:18:49.956866+00	nfqo5huyfowq	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	180	q26zocuyvmf7	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-11-06 23:26:58.104686+00	2025-11-06 23:26:58.104686+00	\N	abace976-71bb-43b7-8c1f-90555fd1537f
00000000-0000-0000-0000-000000000000	177	4gkp4ujuojzg	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-06 22:09:18.573881+00	2025-11-06 23:33:19.401322+00	nlysutkfic6w	d2e58dcb-1bdd-4d65-97ad-ae4d9e2da191
00000000-0000-0000-0000-000000000000	179	ysz3eicsxoax	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-06 23:18:49.965744+00	2025-11-07 00:20:57.670999+00	safi6mu6l6n3	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	182	hlh6h3k7qydp	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-06 23:33:19.403778+00	2025-11-07 01:05:05.201204+00	4gkp4ujuojzg	d2e58dcb-1bdd-4d65-97ad-ae4d9e2da191
00000000-0000-0000-0000-000000000000	178	qotqi42x3mlp	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-06 22:45:52.05544+00	2025-11-07 01:35:23.579325+00	ajko2ipazbcq	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	181	bmq6ntfhz46s	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-06 23:31:11.12878+00	2025-11-07 10:28:00.580781+00	\N	41809255-1f07-4cb5-9b66-2fea3ec22354
00000000-0000-0000-0000-000000000000	171	ukxvcjueea7n	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-05 12:08:04.59085+00	2025-11-08 10:13:01.307511+00	lxoj4elxhb34	9828f57c-c3ba-45a5-8893-278a7f2af2cc
00000000-0000-0000-0000-000000000000	174	4ikowpfdtsjb	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-06 13:47:43.283628+00	2025-11-08 13:34:19.400296+00	owdqvc6w253v	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	240	p6sogmt3nw7u	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-14 18:31:01.029512+00	2025-11-15 10:21:54.644516+00	5xubqgt2l324	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	220	2rjvedixlo6c	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-11 13:35:21.951415+00	2025-11-16 20:18:46.589666+00	a4u7lgci2dyl	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	185	zjpjas2z5rgd	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-07 01:35:23.594284+00	2025-11-07 10:10:24.072897+00	qotqi42x3mlp	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	187	lpxjtbcdwqer	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-11-07 10:13:00.623375+00	2025-11-07 10:13:00.623375+00	\N	3886913b-c444-487f-888d-4dd8b009b031
00000000-0000-0000-0000-000000000000	183	fwxkbno2y6er	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-07 00:20:57.683916+00	2025-11-07 12:58:46.691261+00	ysz3eicsxoax	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	189	vzq65uwlsbvq	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-07 10:28:00.588852+00	2025-11-07 17:25:32.004399+00	bmq6ntfhz46s	41809255-1f07-4cb5-9b66-2fea3ec22354
00000000-0000-0000-0000-000000000000	186	nvcbaqcwnpcz	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-07 10:10:24.082797+00	2025-11-07 20:10:17.567154+00	zjpjas2z5rgd	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	190	4yk6z3kc4fuk	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-07 12:58:46.715615+00	2025-11-07 21:23:26.524473+00	fwxkbno2y6er	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	184	hy7fz6c5ze26	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-07 01:05:05.20921+00	2025-11-07 22:13:35.009071+00	hlh6h3k7qydp	d2e58dcb-1bdd-4d65-97ad-ae4d9e2da191
00000000-0000-0000-0000-000000000000	194	c6kwug37v3rz	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-07 22:13:35.021857+00	2025-11-07 23:11:36.312588+00	hy7fz6c5ze26	d2e58dcb-1bdd-4d65-97ad-ae4d9e2da191
00000000-0000-0000-0000-000000000000	188	5f5mmvgv4zwj	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-07 10:15:25.041475+00	2025-11-07 23:38:03.917056+00	\N	9f468faa-65d8-4c54-8ecc-646234a63692
00000000-0000-0000-0000-000000000000	192	k2ot3shbvu3n	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-07 20:10:17.580432+00	2025-11-08 00:24:01.933688+00	nvcbaqcwnpcz	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	193	fcpgpjzsdxuk	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-07 21:23:26.54715+00	2025-11-08 00:42:14.187456+00	4yk6z3kc4fuk	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	196	rd627z3scfvc	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-07 23:38:03.924754+00	2025-11-08 00:42:19.185646+00	5f5mmvgv4zwj	9f468faa-65d8-4c54-8ecc-646234a63692
00000000-0000-0000-0000-000000000000	199	qq6pgay4i6et	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-11-08 00:42:19.186234+00	2025-11-08 00:42:19.186234+00	rd627z3scfvc	9f468faa-65d8-4c54-8ecc-646234a63692
00000000-0000-0000-0000-000000000000	195	7dgbjszev7lj	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-07 23:11:36.325592+00	2025-11-08 00:54:18.994414+00	c6kwug37v3rz	d2e58dcb-1bdd-4d65-97ad-ae4d9e2da191
00000000-0000-0000-0000-000000000000	200	ysbncz2oriji	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-08 00:54:19.015435+00	2025-11-08 01:52:24.593441+00	7dgbjszev7lj	d2e58dcb-1bdd-4d65-97ad-ae4d9e2da191
00000000-0000-0000-0000-000000000000	198	vrolsax5l6bt	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-08 00:42:14.194055+00	2025-11-08 02:08:11.114071+00	fcpgpjzsdxuk	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	202	sra2nkqqspp2	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-08 02:08:11.123078+00	2025-11-08 10:51:04.241413+00	vrolsax5l6bt	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	203	h6zabrl3ic7f	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-08 10:13:01.33338+00	2025-11-08 13:46:21.972228+00	ukxvcjueea7n	9828f57c-c3ba-45a5-8893-278a7f2af2cc
00000000-0000-0000-0000-000000000000	206	okz44mtpjfyc	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-08 13:46:21.979212+00	2025-11-08 14:44:48.58757+00	h6zabrl3ic7f	9828f57c-c3ba-45a5-8893-278a7f2af2cc
00000000-0000-0000-0000-000000000000	207	3uncc2q4apdc	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-11-08 14:44:48.608096+00	2025-11-08 14:44:48.608096+00	okz44mtpjfyc	9828f57c-c3ba-45a5-8893-278a7f2af2cc
00000000-0000-0000-0000-000000000000	191	qx2zn73saft7	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-07 17:25:32.018102+00	2025-11-08 15:56:16.081185+00	vzq65uwlsbvq	41809255-1f07-4cb5-9b66-2fea3ec22354
00000000-0000-0000-0000-000000000000	201	lc4vo6oqsneb	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-08 01:52:24.608656+00	2025-11-08 21:27:30.816309+00	ysbncz2oriji	d2e58dcb-1bdd-4d65-97ad-ae4d9e2da191
00000000-0000-0000-0000-000000000000	209	riclm6djzx3b	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-11-08 21:27:30.838345+00	2025-11-08 21:27:30.838345+00	lc4vo6oqsneb	d2e58dcb-1bdd-4d65-97ad-ae4d9e2da191
00000000-0000-0000-0000-000000000000	204	caq3lxk5as6t	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-08 10:51:04.248039+00	2025-11-09 08:51:10.43266+00	sra2nkqqspp2	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	210	d5jndh6csqbr	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-09 08:51:10.457053+00	2025-11-09 10:01:34.125635+00	caq3lxk5as6t	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	211	gcndrrpz2do2	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-09 10:01:34.135318+00	2025-11-09 12:09:45.732886+00	d5jndh6csqbr	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	205	vhj3gth7x3tq	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-08 13:34:19.412935+00	2025-11-09 14:31:53.891995+00	4ikowpfdtsjb	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	213	72pa3vwzlhsz	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-09 14:31:53.906115+00	2025-11-10 12:02:03.436351+00	vhj3gth7x3tq	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	214	w6mlcp2vfc34	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-10 12:02:03.459952+00	2025-11-10 13:56:24.842595+00	72pa3vwzlhsz	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	212	hht5saey4syh	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-09 12:09:45.746884+00	2025-11-10 14:15:39.18083+00	gcndrrpz2do2	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	208	4x4pasqcnyxf	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-08 15:56:16.093222+00	2025-11-11 03:48:10.338081+00	qx2zn73saft7	41809255-1f07-4cb5-9b66-2fea3ec22354
00000000-0000-0000-0000-000000000000	217	ksbuyo3fugsp	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-10 14:15:39.183767+00	2025-11-11 13:26:05.190866+00	hht5saey4syh	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	197	a4u7lgci2dyl	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-08 00:24:01.951073+00	2025-11-11 13:35:21.947162+00	k2ot3shbvu3n	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	219	tib4nrt4b63u	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-11 13:26:05.209171+00	2025-11-11 15:39:25.189444+00	ksbuyo3fugsp	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	221	mljaggibyah5	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-11 15:39:25.199665+00	2025-11-11 20:56:23.859063+00	tib4nrt4b63u	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	216	od5ph3w22txa	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-10 13:56:24.8574+00	2025-11-12 11:59:10.818908+00	w6mlcp2vfc34	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	223	s6x6l7ubrqkt	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-12 11:59:10.844632+00	2025-11-12 12:57:35.89418+00	od5ph3w22txa	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	224	uyz64iwqaq6x	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-12 12:57:35.905403+00	2025-11-12 13:55:58.177455+00	s6x6l7ubrqkt	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	225	vxdqzijvtla2	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-12 13:55:58.185898+00	2025-11-12 14:55:10.474473+00	uyz64iwqaq6x	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	222	w755aw67id46	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-11 20:56:23.887128+00	2025-11-12 15:12:30.687259+00	mljaggibyah5	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	226	nsdv3pcwz7st	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-12 14:55:10.491409+00	2025-11-13 10:52:32.340669+00	vxdqzijvtla2	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	228	ot3asrsgsy5j	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-13 10:52:32.367028+00	2025-11-13 12:13:53.847222+00	nsdv3pcwz7st	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	227	veqg7hodqphj	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-12 15:12:30.693846+00	2025-11-13 15:16:50.374148+00	w755aw67id46	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	229	s45hylz5qyps	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-13 12:13:53.863938+00	2025-11-13 17:36:51.052686+00	ot3asrsgsy5j	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	230	kjk3dczyquka	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-13 15:16:50.38522+00	2025-11-13 18:42:10.177591+00	veqg7hodqphj	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	232	arxxnl5i4on7	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-13 18:42:10.189124+00	2025-11-13 20:01:40.218021+00	kjk3dczyquka	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	231	d6dvwdjhmr4r	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-13 17:36:51.073453+00	2025-11-13 20:14:24.438147+00	s45hylz5qyps	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	215	2ulgxa2akheh	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-10 12:07:09.945953+00	2025-11-14 08:46:50.137205+00	\N	35ba656d-4d1f-45e0-9c58-8fdea773e3ee
00000000-0000-0000-0000-000000000000	237	5xubqgt2l324	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-13 23:20:47.341068+00	2025-11-14 18:31:01.00545+00	oml3nwoacltz	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	234	qvatvyyqeast	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-13 20:14:24.446749+00	2025-11-13 21:24:05.370956+00	d6dvwdjhmr4r	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	241	msymrq5efskr	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-15 10:21:54.669598+00	2025-11-15 11:25:41.39897+00	p6sogmt3nw7u	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	235	zit4syheuhms	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-13 21:24:05.38696+00	2025-11-13 22:22:29.755473+00	qvatvyyqeast	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	236	oml3nwoacltz	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-13 22:22:29.767873+00	2025-11-13 23:20:47.33133+00	zit4syheuhms	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	233	dfrbt5islhjq	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-13 20:01:40.240044+00	2025-11-14 12:32:34.169175+00	arxxnl5i4on7	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	239	cf7ba3r4jt5y	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-14 12:32:34.181496+00	2025-11-15 11:55:33.729805+00	dfrbt5islhjq	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	242	34ip7tnlnbed	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-15 11:25:41.420391+00	2025-11-15 14:44:21.70787+00	msymrq5efskr	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	243	xrslbhryoqos	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-15 11:55:33.742468+00	2025-11-15 16:22:15.848265+00	cf7ba3r4jt5y	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	245	qru2l3y3rdjt	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-15 16:22:15.873373+00	2025-11-16 09:39:19.905903+00	xrslbhryoqos	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	246	ry26ibp6fu2x	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-16 09:39:19.923609+00	2025-11-16 15:24:59.139717+00	qru2l3y3rdjt	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	218	232gmnzjrraa	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-11 03:48:10.360216+00	2025-11-16 15:50:01.319109+00	4x4pasqcnyxf	41809255-1f07-4cb5-9b66-2fea3ec22354
00000000-0000-0000-0000-000000000000	247	jpmfdvk7yxsk	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-16 15:24:59.160991+00	2025-11-16 20:01:20.255864+00	ry26ibp6fu2x	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	250	r3oej7epb4v5	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-11-16 20:18:46.602284+00	2025-11-16 20:18:46.602284+00	2rjvedixlo6c	7a257ef6-c32e-49e4-8575-e06e39100c9f
00000000-0000-0000-0000-000000000000	116	f3zea3bbrmxy	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-10-21 05:56:23.721619+00	2025-11-17 10:38:53.834143+00	z6yb4qottesx	7794ab33-c4f7-40d2-8ff5-863148ceecf2
00000000-0000-0000-0000-000000000000	244	kymuucls2e6n	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-15 14:44:21.722378+00	2025-11-17 11:11:14.604228+00	34ip7tnlnbed	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	251	hkvtrpzgagfp	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-17 10:38:53.861487+00	2025-11-17 11:45:23.514893+00	f3zea3bbrmxy	7794ab33-c4f7-40d2-8ff5-863148ceecf2
00000000-0000-0000-0000-000000000000	249	nmvdc4755hl5	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-16 20:01:20.277693+00	2025-11-17 11:49:55.111446+00	jpmfdvk7yxsk	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	252	ltv2up62h27m	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-17 10:49:26.807683+00	2025-11-17 11:55:30.601976+00	d55jg5dgtgug	e39c8284-9744-4dea-9d0c-57a8c3b90b5e
00000000-0000-0000-0000-000000000000	254	x4aanm7th35n	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-17 11:45:23.521288+00	2025-11-17 12:44:21.501951+00	hkvtrpzgagfp	7794ab33-c4f7-40d2-8ff5-863148ceecf2
00000000-0000-0000-0000-000000000000	256	uqkchs2tfusx	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-17 11:55:30.605317+00	2025-11-17 12:57:52.512988+00	ltv2up62h27m	e39c8284-9744-4dea-9d0c-57a8c3b90b5e
00000000-0000-0000-0000-000000000000	258	nhpslhs6hnyg	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-17 12:57:52.518193+00	2025-11-17 15:41:48.762069+00	uqkchs2tfusx	e39c8284-9744-4dea-9d0c-57a8c3b90b5e
00000000-0000-0000-0000-000000000000	257	ehzvjcsx2xed	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-17 12:44:21.50925+00	2025-11-17 15:41:49.653693+00	x4aanm7th35n	7794ab33-c4f7-40d2-8ff5-863148ceecf2
00000000-0000-0000-0000-000000000000	260	fkwyfj3iuhdi	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-17 15:41:49.654232+00	2025-11-17 19:52:52.935745+00	ehzvjcsx2xed	7794ab33-c4f7-40d2-8ff5-863148ceecf2
00000000-0000-0000-0000-000000000000	259	ykjnfn2ggo2f	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-17 15:41:48.784799+00	2025-11-17 20:16:36.257426+00	nhpslhs6hnyg	e39c8284-9744-4dea-9d0c-57a8c3b90b5e
00000000-0000-0000-0000-000000000000	255	gddlvpmn7b5t	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-17 11:49:55.112651+00	2025-11-17 20:35:44.898799+00	nmvdc4755hl5	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	238	uz6nabxk3w3z	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-14 08:46:50.162987+00	2025-11-18 00:10:27.428042+00	2ulgxa2akheh	35ba656d-4d1f-45e0-9c58-8fdea773e3ee
00000000-0000-0000-0000-000000000000	263	2maktgh5dxpz	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-17 20:35:44.91595+00	2025-11-18 10:10:46.579041+00	gddlvpmn7b5t	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	253	fq2nhq2yc6u7	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-17 11:11:14.609304+00	2025-11-18 10:27:43.697493+00	kymuucls2e6n	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	265	jlbybr774f5g	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-18 10:10:46.602615+00	2025-11-18 11:12:17.084596+00	2maktgh5dxpz	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	266	am5zi3ibyyof	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-18 10:27:43.705533+00	2025-11-18 11:58:08.066744+00	fq2nhq2yc6u7	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	267	pvoslc52ujzb	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-18 11:12:17.094506+00	2025-11-18 12:10:24.812458+00	jlbybr774f5g	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	269	ahjlqyy3tx7a	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-18 12:10:24.816876+00	2025-11-18 13:08:26.116518+00	pvoslc52ujzb	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	268	7vmaw6ddzdg6	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-18 11:58:08.072993+00	2025-11-18 14:18:12.153982+00	am5zi3ibyyof	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	270	bwjxro4msx4y	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-18 13:08:26.123042+00	2025-11-18 22:04:57.393074+00	ahjlqyy3tx7a	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	272	c6zzwe5qq3f2	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-18 22:04:57.410855+00	2025-11-19 09:48:34.723175+00	bwjxro4msx4y	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	274	ay7kqhbu642w	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-19 09:48:34.726808+00	2025-11-19 11:55:26.140833+00	c6zzwe5qq3f2	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	273	chb556tor54a	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-19 09:46:54.937548+00	2025-11-19 14:58:48.141+00	\N	01ec7178-09fc-486b-a96a-75a3f2a8c51e
00000000-0000-0000-0000-000000000000	276	jkbew6h7ynrc	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-11-19 14:58:48.159532+00	2025-11-19 14:58:48.159532+00	chb556tor54a	01ec7178-09fc-486b-a96a-75a3f2a8c51e
00000000-0000-0000-0000-000000000000	261	uds4zolxsfa7	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-17 19:52:52.959512+00	2025-11-19 19:27:29.752778+00	fkwyfj3iuhdi	7794ab33-c4f7-40d2-8ff5-863148ceecf2
00000000-0000-0000-0000-000000000000	277	34nhbwghi34c	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-11-19 19:27:29.772308+00	2025-11-19 19:27:29.772308+00	uds4zolxsfa7	7794ab33-c4f7-40d2-8ff5-863148ceecf2
00000000-0000-0000-0000-000000000000	275	zhfi2yl7z4oc	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-19 11:55:26.154281+00	2025-11-19 21:13:14.588975+00	ay7kqhbu642w	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	278	nh6kmw5xsy3e	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-19 21:13:14.598378+00	2025-11-20 10:08:31.694156+00	zhfi2yl7z4oc	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	279	54652k3kythp	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-20 10:08:31.717935+00	2025-11-22 10:26:41.613939+00	nh6kmw5xsy3e	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	271	guzr4crvfbxj	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-18 14:18:12.17775+00	2025-11-22 11:48:34.948225+00	7vmaw6ddzdg6	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	280	ekk3s7gs3yb4	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-22 10:26:41.63844+00	2025-11-22 12:49:56.947913+00	54652k3kythp	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	248	nvzmwixqttrx	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-16 15:50:01.331531+00	2025-11-24 08:31:47.23962+00	232gmnzjrraa	41809255-1f07-4cb5-9b66-2fea3ec22354
00000000-0000-0000-0000-000000000000	281	bweueoakavrw	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-22 11:48:34.960784+00	2025-11-24 13:21:54.048117+00	guzr4crvfbxj	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	262	755ot42odps7	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-17 20:16:36.278128+00	2025-11-25 18:51:22.754857+00	ykjnfn2ggo2f	e39c8284-9744-4dea-9d0c-57a8c3b90b5e
00000000-0000-0000-0000-000000000000	264	kj2bpwncljnq	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-18 00:10:27.456516+00	2025-11-26 15:04:20.857733+00	uz6nabxk3w3z	35ba656d-4d1f-45e0-9c58-8fdea773e3ee
00000000-0000-0000-0000-000000000000	282	b7qf2gst5fu2	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-22 12:49:56.967063+00	2025-11-22 15:08:15.355736+00	ekk3s7gs3yb4	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	283	34r5bjxxasvk	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-22 15:08:15.374228+00	2025-11-22 20:57:21.721504+00	b7qf2gst5fu2	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	284	zfg46jgeb2x6	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-22 20:57:21.736339+00	2025-11-23 09:43:40.888667+00	34r5bjxxasvk	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	285	6m5vryzb36j7	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-23 09:43:40.91521+00	2025-11-23 11:56:34.686714+00	zfg46jgeb2x6	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	286	wtiko2cvvstz	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-23 11:56:34.70984+00	2025-11-23 13:58:51.61773+00	6m5vryzb36j7	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	287	qg2ruxux5cgx	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-23 13:58:51.629859+00	2025-11-23 15:21:46.560903+00	wtiko2cvvstz	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	288	3aamver5cawx	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-23 15:21:46.571342+00	2025-11-24 13:15:21.140658+00	qg2ruxux5cgx	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	291	2oimggk4zrv4	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-24 13:21:54.059327+00	2025-11-24 14:43:04.446719+00	bweueoakavrw	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	290	xsthx7e42a33	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-24 13:15:21.15549+00	2025-11-25 09:43:55.203158+00	3aamver5cawx	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	292	2qufwbworpz2	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-24 14:43:04.454569+00	2025-11-25 13:27:49.440921+00	2oimggk4zrv4	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	293	vsu5qvx2jdle	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-25 09:43:55.226844+00	2025-11-25 14:09:30.578616+00	xsthx7e42a33	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	294	e5j7m6obc6m2	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-25 13:27:49.457091+00	2025-11-25 18:09:31.561791+00	2qufwbworpz2	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	297	47tzbbd2b5ak	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-11-25 18:51:22.766138+00	2025-11-25 18:51:22.766138+00	755ot42odps7	e39c8284-9744-4dea-9d0c-57a8c3b90b5e
00000000-0000-0000-0000-000000000000	295	tke7zyo2fyb3	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-25 14:09:30.589099+00	2025-11-25 19:34:34.635228+00	vsu5qvx2jdle	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	296	z2rzbfwhi7ua	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-25 18:09:31.582268+00	2025-11-25 19:46:06.202331+00	e5j7m6obc6m2	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	298	hhsgarplx6mp	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-25 19:34:34.644393+00	2025-11-26 09:58:50.525281+00	tke7zyo2fyb3	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	299	drxzihnvht6y	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-25 19:46:06.211774+00	2025-11-26 13:12:10.402614+00	z2rzbfwhi7ua	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	301	jhj2lyzssw6f	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-26 13:12:10.422597+00	2025-11-26 14:18:06.826917+00	drxzihnvht6y	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	302	bopktzldbuvz	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-11-26 14:18:06.838144+00	2025-11-26 14:18:06.838144+00	jhj2lyzssw6f	968edd83-f007-47b9-97ed-85aeb6cbfd02
00000000-0000-0000-0000-000000000000	300	ejrn5kowcmmr	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-26 09:58:50.552698+00	2025-11-26 19:14:27.356942+00	hhsgarplx6mp	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	304	5n3jjcoez3eo	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-26 19:14:27.374893+00	2025-11-26 20:41:45.444752+00	ejrn5kowcmmr	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	289	mjhq4q3cjmuk	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-24 08:31:47.260245+00	2025-11-28 07:36:46.156771+00	nvzmwixqttrx	41809255-1f07-4cb5-9b66-2fea3ec22354
00000000-0000-0000-0000-000000000000	306	dqrvzaukkj6t	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-11-28 07:36:46.175102+00	2025-11-28 07:36:46.175102+00	mjhq4q3cjmuk	41809255-1f07-4cb5-9b66-2fea3ec22354
00000000-0000-0000-0000-000000000000	303	laepquqqpkki	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-26 15:04:20.871121+00	2025-11-29 08:14:07.18633+00	kj2bpwncljnq	35ba656d-4d1f-45e0-9c58-8fdea773e3ee
00000000-0000-0000-0000-000000000000	307	kfxq43fhv6tk	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-29 08:14:07.211131+00	2025-11-29 09:12:10.34351+00	laepquqqpkki	35ba656d-4d1f-45e0-9c58-8fdea773e3ee
00000000-0000-0000-0000-000000000000	308	3jze6qzeltap	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-29 09:12:10.355472+00	2025-11-29 10:48:01.148263+00	kfxq43fhv6tk	35ba656d-4d1f-45e0-9c58-8fdea773e3ee
00000000-0000-0000-0000-000000000000	305	q5bpngdopalg	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-26 20:41:45.462116+00	2025-11-29 10:51:34.527739+00	5n3jjcoez3eo	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	310	ils2phc3d55s	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-29 10:51:34.534304+00	2025-11-29 13:30:06.445074+00	q5bpngdopalg	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	311	zsmbjtr5eplm	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-11-29 13:30:06.462334+00	2025-11-29 13:30:06.462334+00	ils2phc3d55s	86af5c98-ead8-4df2-9b9c-7b34e06127b0
00000000-0000-0000-0000-000000000000	309	jn4ld5kffexw	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	t	2025-11-29 10:48:01.166805+00	2025-11-30 10:56:26.29508+00	3jze6qzeltap	35ba656d-4d1f-45e0-9c58-8fdea773e3ee
00000000-0000-0000-0000-000000000000	312	fqtfldzfpgaj	755c0f15-990a-4e0d-9a1d-03d5de1be7ed	f	2025-11-30 10:56:26.319725+00	2025-11-30 10:56:26.319725+00	jn4ld5kffexw	35ba656d-4d1f-45e0-9c58-8fdea773e3ee
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."customers" ("id", "name", "phone", "address", "created_at", "updated_at") FROM stdin;
8d21ce19-0b96-4a14-874f-2216e6970bad	MOBEEN KHALIL	+923080655148	\N	2025-11-03 14:48:45.313175+00	2025-11-03 14:48:45.313175+00
7c51e230-0a0d-4067-a8d7-25517da16653	BASIT FAMILY	+923207650400	\N	2025-11-03 14:51:23.118154+00	2025-11-03 14:51:23.118154+00
73b007bd-c3e2-40b5-8d20-e5e48f9b050e	SADAQAT ISRA	+923177289737	\N	2025-11-03 14:52:45.182372+00	2025-11-03 14:52:45.182372+00
3c346072-215d-4db3-8e5f-43edd6f378c9	UMAIR CHEEMA	+923040681010	\N	2025-11-03 14:54:21.590838+00	2025-11-03 14:54:21.590838+00
7cdddbc8-f777-4756-803e-674cf68e7ede	DANISH	+923226516291	\N	2025-11-05 12:09:34.518195+00	2025-11-05 12:09:34.518195+00
08f21194-3bcc-4820-b3f2-e4d1ec2605bd	SUNNY BHAI	+923219999875	\N	2025-11-08 14:29:15.219784+00	2025-11-08 14:29:15.219784+00
3259c031-5d4c-4b8f-b43c-9f637e8b3837	ABDUL-HANAN (ZAIN REF)	+923206089281	\N	2025-11-10 12:09:46.268834+00	2025-11-10 12:09:46.268834+00
d6568454-70f5-4d3f-b83e-4c5d487ca77e	SOHAIB RASHID	+923211169595	\N	2025-10-29 11:04:43.872702+00	2025-10-29 11:04:43.872702+00
127d3fec-45cc-48b9-92b4-42e29d61fb47	MRS AMIR	+923004507672	\N	2025-10-29 14:28:59.10091+00	2025-10-29 14:28:59.10091+00
1dddfc2f-d913-4909-bf79-f49ee20e3101	M BASIT 	+923106964807	\N	2025-10-30 14:51:26.09341+00	2025-10-30 14:51:26.09341+00
bbe5e066-6810-46f1-9f20-be8c1e9898ef	HAMMAD SANI	+923216162347	\N	2025-10-30 18:25:58.513781+00	2025-10-30 18:25:58.513781+00
61078746-da16-4e30-b00a-1ca4e8c415d5	SH ASIM	+923018111112	\N	2025-10-30 18:32:58.894199+00	2025-10-30 18:32:58.894199+00
2422dddc-c24c-486b-a4f5-a4670a64ba0d	HASSAN SIALKOT	+923350000445	\N	2025-10-30 18:36:40.32987+00	2025-10-30 18:36:40.32987+00
a95ee68e-f297-4974-8ee7-e181396919fa	NAVEED SIALKOT 	+923272176000	\N	2025-10-30 18:51:53.762745+00	2025-10-30 18:51:53.762745+00
9b57097a-22e9-49f1-b429-be3071d8ef6b	HASSAN AMIR	+923160405145	\N	2025-10-30 18:55:34.391237+00	2025-10-30 18:55:34.391237+00
fa078972-be35-4a96-98a1-398f05f13276	AHSAN ASIF	+923252400000	\N	2025-10-30 18:59:16.588458+00	2025-10-30 18:59:16.588458+00
f8aee391-dc32-4b43-886c-4d04e186fcc7	HAMZA GROOM	+923037337331	\N	2025-10-30 19:04:00.375901+00	2025-10-30 19:04:00.375901+00
a982f98f-1dc6-4b56-842e-99f675500004	ZOHAIB ZAHID 	+923016746105	\N	2025-10-30 19:06:23.08199+00	2025-10-30 19:06:23.08199+00
7f366cb6-131c-49f6-89a8-b79c06d077e7	HAJI ADEEL 	+923229702222	\N	2025-10-30 19:12:02.67528+00	2025-10-30 19:12:02.67528+00
3d2940c1-696f-49e6-a7e4-243a67b197aa	ADEEL	+923051125000	\N	2025-10-30 19:15:09.771144+00	2025-10-30 19:15:09.771144+00
7588c28b-2933-4223-91ea-91ef6c07da06	ABDUL TAUHEED 	+923246040983	\N	2025-10-30 19:19:04.200279+00	2025-10-30 19:19:04.200279+00
2585665c-d342-42e2-8add-bb4d0397ce5e	AUZAN NAEEM	+923053110055	\N	2025-10-30 19:26:04.272867+00	2025-10-30 19:26:04.272867+00
835ffb68-c3c0-4ec5-8dfc-bc8f6667faea	SH HASSAN QASIM	+923010041842	\N	2025-10-30 19:30:45.189355+00	2025-10-30 19:30:45.189355+00
4cc8ce47-3421-4120-9778-d1b10a527d49	HASEEB SALMAN	+923368189000	\N	2025-10-30 19:33:50.813264+00	2025-10-30 19:33:50.813264+00
6c9502f3-3c39-44d3-b321-f0fa14d9289d	ADEEL & FARAZ	+923112936000	\N	2025-10-30 19:36:29.209101+00	2025-10-30 19:36:29.209101+00
4dd042e3-0ac4-4ffb-9799-78101cd64956	ANS MAHAD	+923000699362	\N	2025-10-30 19:39:13.842133+00	2025-10-30 19:39:13.842133+00
261ee7b1-9fee-4670-821f-d07e5e943cd1	SAFEER REHMAN	+923157957721	\N	2025-10-30 19:42:03.735228+00	2025-10-30 19:42:03.735228+00
d4cb76cd-9a34-484b-be96-4dce61fbdd5d	HARIS AMIN	+923205886108	\N	2025-10-30 19:44:42.277419+00	2025-10-30 19:44:42.277419+00
9b98f8d6-6138-4e25-a4c0-4f2f6fa14eee	ABDUL MOEEZ	+923006285056	\N	2025-10-30 19:46:54.669096+00	2025-10-30 19:46:54.669096+00
0c447be9-7e8f-4ca3-b446-4ec8486fef6a	ZAHID FAMILY 	+923217426849	\N	2025-10-30 19:56:02.471111+00	2025-10-30 19:56:02.471111+00
deea44ad-832c-44e0-9d74-989d023c594e	SHERAZ	+923157883436	\N	2025-10-30 20:01:55.764674+00	2025-10-30 20:01:55.764674+00
907962a8-1308-4e8d-b2b0-1d92aea9178e	SHAHEER	+923644666667	\N	2025-10-30 20:06:22.980573+00	2025-10-30 20:06:22.980573+00
7e2ea9c6-31c8-4986-b5c5-b78db831168a	DANIYAL	+923289117722	\N	2025-10-30 20:09:26.579738+00	2025-10-30 20:09:26.579738+00
337c5060-0c5d-497d-96d4-332fe2b8f4cd	IMRAN ASLAM	+923217429404	\N	2025-10-30 20:14:00.587368+00	2025-10-30 20:14:00.587368+00
23362277-ec69-4efd-9a94-a65c1254a83c	ARHAM	+923217009989	\N	2025-10-31 15:52:38.030309+00	2025-10-31 15:52:38.030309+00
a940430b-ecdf-41b1-a2a9-0c98dd8523d8	UZAIR ALI 	+923101791792	\N	2025-10-31 15:55:01.830117+00	2025-10-31 15:55:01.830117+00
14aee844-f930-42a4-945b-a42c41741dba	MR IMRAN 	+923134440088	\N	2025-10-31 15:58:50.079739+00	2025-10-31 15:58:50.079739+00
f42ddc39-94e5-4e3c-ab6b-8d3e87e929ab	BILAL FAMILY 	+923247335000	\N	2025-10-31 16:00:54.398662+00	2025-10-31 16:00:54.398662+00
0f698fff-72e1-4c09-8456-fbf96a1650a5	AMMAR YOUSAF	+923123593100	\N	2025-10-31 16:05:38.281527+00	2025-10-31 16:05:38.281527+00
6acf65f1-7c75-4170-a488-a0f969a34327	UMAIR IMRAN	+923238645000	\N	2025-10-31 16:07:53.376265+00	2025-10-31 16:07:53.376265+00
8fb63f9c-1892-4eb6-8d80-919ea6b8ce20	ALI ( HARIS )	+923206434612	\N	2025-10-31 16:11:03.826154+00	2025-10-31 16:11:03.826154+00
53f8721f-2809-4827-9ede-a40cfb97d7a5	NABEEL KHAWAR 	+924695796417	\N	2025-10-31 16:16:47.6173+00	2025-10-31 16:16:47.6173+00
465f6c6c-98d0-4a42-86c5-b80687670e07	HANZALA	+923216465541	\N	2025-10-31 16:25:07.971797+00	2025-10-31 16:25:07.971797+00
df0cc1d0-0526-4ec3-bd60-e7785d094ee0	SHERYAR MOHID 	+923094864144	\N	2025-10-31 16:27:48.648037+00	2025-10-31 16:27:48.648037+00
0f342446-b200-4941-a9bd-3db4e5e1ed47	HASHAM	+923006475566	\N	2025-10-31 16:30:01.810596+00	2025-10-31 16:30:01.810596+00
c25a8fd7-6399-4b41-ada4-b4538ba70a14	UMAIR ALI	+923000729272	\N	2025-10-31 16:34:00.402243+00	2025-10-31 16:34:00.402243+00
c7654bce-acbc-4df7-9045-cf6872b6a6e7	EHTASHAM	+923211435040	\N	2025-11-01 08:06:53.876565+00	2025-11-01 08:06:53.876565+00
e26a596c-a841-4fb2-9f73-b05362e42436	BILAL ( MRS NAVEED )	+923246467225	\N	2025-11-03 14:43:45.287504+00	2025-11-03 14:43:45.287504+00
d76e4219-ef14-4a6f-b930-8db9de7317af	HAMZA KAYANI	+923232000122	\N	2025-11-03 14:45:34.134048+00	2025-11-03 14:45:34.134048+00
7d249a83-b62d-4d44-953e-0315ad567b2d	AMEER AFRICA	+923211111111	\N	2025-11-03 14:46:48.811046+00	2025-11-03 14:46:48.811046+00
4ec666d6-deca-40da-beda-256b51234ce7	EHTHASHAM	+923060608993	\N	2025-11-12 09:44:18.056277+00	2025-11-12 09:44:18.056277+00
af1b6ca0-a41a-4d4b-a851-b7f481c566e2	VICKY SALEEM	+923212220324		2025-11-13 18:42:49.438406+00	2025-11-13 18:48:02.872826+00
faa983e2-773e-46b2-8bec-8d5e88b0e3c2	HAMZA SALEEM	+923336979700	\N	2025-11-13 19:01:12.308444+00	2025-11-13 19:01:12.308444+00
89941f9a-8a61-4a43-a823-b1824109958a	MOHID SALEEM	+923022220409	\N	2025-11-13 19:10:34.893127+00	2025-11-13 19:10:34.893127+00
9257489f-0419-4df0-88c3-cf1218530d72	NUMAN IJAZ	+923217440434	\N	2025-11-14 12:33:21.099196+00	2025-11-14 12:33:21.099196+00
4070907e-979f-4687-8706-1ed5aa5c59cd	MR SALMAN NAEEM	+923226465664	\N	2025-11-15 10:23:32.342815+00	2025-11-15 10:23:32.342815+00
70b5ed5b-3d7e-48f1-943b-edb9db8df689	Ammar Ilyas	+923328118720	\N	2025-11-17 10:40:52.083847+00	2025-11-17 10:40:52.083847+00
875e833f-42a4-466f-91c0-f2fee9a9fdee	SHEHZAD ALI	+923207421850	\N	2025-11-17 11:22:34.501618+00	2025-11-17 11:22:34.501618+00
0278f7d7-41c8-4dbf-8ed1-27990e088738	EEMAN HAMZA	+923000699797	\N	2025-11-17 20:47:21.296946+00	2025-11-17 20:47:21.296946+00
a49ce56f-9b98-411e-9896-68dbbb20f202	NEELAM PHUPHO	+923337370793	\N	2025-11-17 20:53:01.444041+00	2025-11-17 20:53:01.444041+00
5889d0c8-7461-47af-a658-3640e1a7f79a	SARIM SONICA	+923151809000	\N	2025-11-19 11:56:10.063402+00	2025-11-19 11:56:10.063402+00
6b130ad9-cc01-40d6-8a88-4400a6c01cd1	RASHID ALI	+923216424465	\N	2025-11-22 11:52:13.381279+00	2025-11-22 11:52:13.381279+00
637713d8-51d5-4bf2-8ca4-fcd7408f9d5c	AHMAD ILLYAS	+923414492001	\N	2025-11-22 12:14:40.873801+00	2025-11-22 12:14:40.873801+00
89434fe1-94c2-42d2-9cfd-26b68300b133	ABDUL-HADI	+923463306020	\N	2025-11-23 09:45:45.854271+00	2025-11-23 09:45:45.854271+00
e4fadd96-46ea-4546-a823-1c882e919aec	TALHA REHMAN	+923044167690		2025-11-24 13:24:23.97588+00	2025-11-24 13:30:34.07684+00
384db058-032e-447e-9b1d-d3dff82ce7da	ABIS	+923104837944	\N	2025-11-26 19:32:07.67234+00	2025-11-26 19:32:07.67234+00
64516557-ea7d-4982-b222-0bcaecb81c8a	AMEER HAMZA	+923467070011	\N	2025-11-29 08:16:15.778644+00	2025-11-29 08:16:15.778644+00
0929cf57-d9c2-45ff-95f8-07e721ded418	FARHAN & AHMAD	+923008716774	\N	2025-11-29 09:03:51.564397+00	2025-11-29 09:03:51.564397+00
8085b51d-d708-46f2-818b-ffce51ed6e13	ARSLAN SARFRAZ	+923454543442	\N	2025-11-29 13:51:22.13528+00	2025-11-29 13:51:22.13528+00
\.


--
-- Data for Name: measurements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."measurements" ("id", "customer_id", "name", "chest", "waist", "hip", "neck", "wrist", "thigh", "knee", "is_default", "notes", "created_at", "updated_at", "sleeves", "biceps", "shoulder", "cross_back", "open_coat_length", "coat_length", "sherwani_length", "kameez_length", "three_piece_waistcoat_length", "waistcoat_length", "pent_waist", "pent_length", "bottom", "shoe_size", "turban_size") FROM stdin;
b7c33114-aeb7-4555-b898-6744fafda847	8085b51d-d708-46f2-818b-ffce51ed6e13	ARSLAN SARFRAZ	40.50	40.00	44.00	16.50	\N	26.50	16.75	t	\N	2025-11-29 13:59:29.312816+00	2025-11-29 13:59:29.312816+00	23.50	\N	18.50	17.50	29.50	\N	\N	39.50	\N	\N	38.00	37.50	13.50	\N	\N
acd317a4-6bcc-48c1-b67f-8ca1b4bb96c8	3c346072-215d-4db3-8e5f-43edd6f378c9	New Measurements	51.50	52.00	52.00	17.25	\N	31.00	19.00	t	PAO CHORA\nCROSS ZIADA GOL\nSHOULDER PICTURE	2025-11-03 15:12:02.21709+00	2025-11-03 15:12:02.21709+00	25.50	\N	19.50	19.00	30.50	\N	42.00	44.00	\N	\N	48.00	40.00	15.50	11.50	\N
1d4f531b-d685-4cd9-9c87-266be100ab2f	7cdddbc8-f777-4756-803e-674cf68e7ede	DANISH	48.50	37.00	40.00	15.50	\N	\N	\N	t	CROSSBACK 16G\nSHOULDER VIDEO	2025-11-05 12:23:21.958445+00	2025-11-05 12:23:21.958445+00	25.00	\N	18.00	16.00	\N	30.00	\N	\N	25.00	\N	35.00	38.50	13.00	\N	\N
dcb32b0c-c829-44ce-842f-8468ef0a99a1	08f21194-3bcc-4820-b3f2-e4d1ec2605bd	SUNNY BHAI - Standard Measurements	39.00	37.00	38.50	15.50	\N	\N	\N	f		2025-11-08 14:35:12.513868+00	2025-11-08 14:35:12.513868+00	25.00	\N	18.00	\N	\N	\N	\N	41.00	\N	\N	35.00	39.00	14.00	\N	\N
9c36ed29-59d1-45c4-85f7-ab191a7e05e3	c25a8fd7-6399-4b41-ada4-b4538ba70a14	UMAIR ALI	41.00	38.00	41.00	16.50	\N	\N	\N	t	\N	2025-11-08 14:52:54.080186+00	2025-11-08 14:52:54.080186+00	24.75	\N	18.50	15.50	\N	\N	\N	44.00	\N	30.00	\N	41.50	16.50	\N	\N
9c8872eb-2c44-4f5a-ba61-130c708f6e7a	3259c031-5d4c-4b8f-b43c-9f637e8b3837	ABDUL-HANAN	39.50	38.00	41.50	16.00	\N	\N	\N	t	\N	2025-11-10 12:12:25.867384+00	2025-11-10 12:12:25.867384+00	24.00	\N	18.00	15.50	\N	29.00	\N	\N	\N	\N	36.50	37.50	14.00	\N	\N
0f486a4d-14fa-4837-974e-ff72df408cdb	af1b6ca0-a41a-4d4b-a851-b7f481c566e2	VICKY SALEEM - Standard Measurements	53.00	54.00	49.50	19.00	\N	26.00	20.50	f	BACK CHOTI\nTHAI TYAR 26\nKNEE TYAR\nINSIDE 26	2025-11-13 18:59:28.456628+00	2025-11-13 18:59:28.456628+00	24.00	\N	20.00	19.00	\N	32.50	\N	\N	\N	\N	45.50	38.00	14.00	\N	\N
368c7362-1a40-4303-9e61-85045740b2d4	faa983e2-773e-46b2-8bec-8d5e88b0e3c2	New Measurements	48.00	49.00	46.50	17.00	\N	27.50	19.50	t	THIGH AND KNEE TYAR	2025-11-13 19:06:36.460174+00	2025-11-13 19:06:36.460174+00	22.50	\N	18.50	17.50	\N	30.00	\N	\N	\N	\N	43.50	35.50	13.50	\N	\N
8c3a5c5e-e093-4b49-9541-718fb8e6e159	89941f9a-8a61-4a43-a823-b1824109958a	New Measurements	44.00	43.00	43.50	16.50	\N	24.00	18.00	t	RYT SIDE DOWN\nPANT INSIDE 24.5	2025-11-13 19:18:48.102108+00	2025-11-13 19:18:48.102108+00	21.50	\N	19.00	18.00	\N	29.00	\N	38.00	\N	\N	39.00	35.50	13.50	\N	\N
79fea8c3-bec9-4a6b-997f-1a32c79fb8c6	9257489f-0419-4df0-88c3-cf1218530d72	New Measurements	44.00	43.00	43.00	17.50	\N	\N	\N	t	SHOLDER NORMAL\nPAD PICHE RAKHNE HA	2025-11-14 13:03:11.390743+00	2025-11-14 13:03:11.390743+00	25.00	\N	19.25	18.50	\N	31.50	45.00	\N	\N	\N	40.00	41.00	15.00	\N	\N
3be0567e-59f0-42d0-9944-ee9aae4a51e2	4070907e-979f-4687-8706-1ed5aa5c59cd	MR SALMAN NAEEM	40.50	39.00	43.50	\N	\N	\N	\N	t	SHIRT SLEEVES 24	2025-11-15 10:30:54.529876+00	2025-11-15 10:30:54.529876+00	23.50	\N	18.50	15.50	\N	29.00	\N	\N	\N	\N	38.00	39.00	\N	\N	\N
aa9bca57-ccff-47a3-9e42-c93cbe855f67	875e833f-42a4-466f-91c0-f2fee9a9fdee	SHEHZAD ALI	40.00	40.00	40.00	16.00	\N	\N	\N	t	PANT LENGTH RELAX FITTING\nTURBAN 21.5	2025-11-17 11:45:28.4608+00	2025-11-17 11:45:28.4608+00	25.00	\N	18.50	16.00	29.50	30.50	40.00	41.00	\N	\N	37.00	39.00	14.00	9.50	\N
aa436794-139d-497e-b550-09a79db1909e	6b130ad9-cc01-40d6-8a88-4400a6c01cd1	RASHID ALI	44.50	46.50	46.00	17.50	\N	29.00	16.00	t	\N	2025-11-22 12:02:04.058169+00	2025-11-22 12:02:04.058169+00	25.50	\N	18.50	16.50	\N	32.00	\N	\N	\N	\N	43.00	40.50	14.50	\N	\N
d88215e0-a589-4158-b5ef-0bd9260480cb	637713d8-51d5-4bf2-8ca4-fcd7408f9d5c	AHMAD ILLYAS	36.00	34.25	38.50	15.00	\N	\N	\N	t	RIGHT SHOULDER DOWN\nTURBAN 21.75	2025-11-22 12:21:36.76427+00	2025-11-22 12:21:36.76427+00	24.00	\N	19.50	15.50	29.00	\N	\N	40.00	\N	\N	34.50	37.50	13.50	8.50	\N
1c2d5544-fc0a-4804-ad28-a1259420f5cc	89434fe1-94c2-42d2-9cfd-26b68300b133	ABDUL-HADI	39.00	34.50	37.00	15.00	\N	\N	\N	t	TURBAN 22	2025-11-23 09:55:31.991929+00	2025-11-23 09:55:31.991929+00	22.75	\N	18.50	15.00	\N	\N	36.00	\N	\N	\N	34.00	34.50	13.00	7.50	\N
89f8302e-04a5-44b2-b2e6-a83f31a87aaf	e4fadd96-46ea-4546-a823-1c882e919aec	TALHA REHMAN	42.00	40.00	41.00	16.00	\N	\N	\N	t	\N	2025-11-24 13:28:22.850742+00	2025-11-24 13:28:22.850742+00	21.50	\N	18.25	17.00	\N	27.50	\N	\N	\N	\N	37.50	34.00	13.00	\N	\N
498b4991-2711-43ce-ab82-86a93e1d7477	0929cf57-d9c2-45ff-95f8-07e721ded418	FARHAN	35.00	34.00	37.50	14.74	\N	\N	\N	t	\N	2025-11-29 09:06:33.633141+00	2025-11-29 09:06:33.633141+00	23.00	\N	16.00	14.50	\N	27.50	\N	\N	\N	\N	35.50	38.00	13.00	\N	\N
f6732f40-3e1e-466c-b1ca-0eadd07a4f84	0929cf57-d9c2-45ff-95f8-07e721ded418	AHMAD	30.00	31.00	32.50	13.50	\N	\N	\N	f	SHOULDER ZD	2025-11-29 09:11:17.094924+00	2025-11-29 09:11:17.094924+00	20.50	\N	15.50	14.00	\N	25.00	\N	\N	\N	\N	30.00	35.00	13.25	\N	\N
daa56c40-22cb-46c4-b2da-006d2a4cbb05	64516557-ea7d-4982-b222-0bcaecb81c8a	New Measurements	41.50	41.50	43.50	17.00	\N	\N	\N	t	TURBAN 22.25	2025-11-29 08:32:26.276278+00	2025-11-29 11:00:36.98819+00	23.50	\N	17.50	16.00	30.00	30.00	40.00	41.50	\N	\N	40.50	47.50	13.50	10.00	\N
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."orders" ("id", "order_number", "customer_id", "booking_date", "delivery_date", "comments", "fitting_preferences", "created_at", "updated_at", "total_amount", "advance_paid", "balance", "payment_method", "measurement_id", "status") FROM stdin;
15f5c2b5-fd18-4c1a-adad-2bf1cc627fc3	AR-00001	d6568454-70f5-4d3f-b83e-4c5d487ca77e	2025-07-17	2025-12-02			2025-10-29 11:13:31.371105+00	2025-11-17 20:37:10.272064+00	115000.00	115000.00	1.00	bank	\N	In Process
72974b6f-fc69-49af-b02c-dde30673e0f2	AR-00007	2422dddc-c24c-486b-a4f5-a4670a64ba0d	2025-08-11	2025-12-20			2025-10-30 18:38:50.697997+00	2025-11-17 21:07:56.712915+00	400000.00	400000.00	200000.00	other	\N	In Process
2c109569-cf67-49ce-b1eb-8f44c635d1c6	AR-00008	a95ee68e-f297-4974-8ee7-e181396919fa	2025-08-11	2025-12-20			2025-10-30 18:54:19.762844+00	2025-11-17 21:08:40.367321+00	140000.00	140000.00	140000.00	other	\N	In Process
1d7f1c09-a73d-4403-beb4-1d56ce3a8f92	AR-00011	f8aee391-dc32-4b43-886c-4d04e186fcc7	2025-08-30	2025-11-30			2025-10-30 19:05:09.366212+00	2025-11-18 11:58:18.709907+00	\N	\N	0.00	other	\N	In Process
00ee4988-2414-4b6a-8801-015896824c95	AR-00047	7c51e230-0a0d-4067-a8d7-25517da16653	2025-11-03	2025-11-24			2025-11-03 14:52:08.300749+00	2025-11-18 11:58:50.152432+00	1050000.00	800000.00	1050000.00	other	\N	In Process
7b5c58db-90b4-4a99-8bb6-60e04574f9de	AR-00009	9b57097a-22e9-49f1-b429-be3071d8ef6b	2025-08-16	2025-11-05			2025-10-30 18:57:50.71614+00	2025-11-17 20:58:36.125594+00	400000.00	300000.00	230000.00	other	\N	In Process
bf210973-19fa-49da-ae13-910cec709f76	AR-00057	9257489f-0419-4df0-88c3-cf1218530d72	2025-11-14	2025-11-21			2025-11-14 13:03:44.383717+00	2025-11-14 13:03:44.383717+00	\N	\N	\N	other	79fea8c3-bec9-4a6b-997f-1a32c79fb8c6	In Process
c6ced0b2-38cb-4955-959b-7411e32409b2	AR-00051	c25a8fd7-6399-4b41-ada4-b4538ba70a14	2025-11-08	2025-11-15			2025-11-08 14:53:17.686282+00	2025-11-17 20:59:57.291831+00	50000.00	30000.00	\N	other	9c36ed29-59d1-45c4-85f7-ab191a7e05e3	In Process
bafe46ef-6777-4b06-af1d-afd270354c0c	AR-00006	61078746-da16-4e30-b00a-1ca4e8c415d5	2025-08-06	2025-11-15			2025-10-30 18:34:21.882956+00	2025-11-17 21:01:21.133017+00	105000.00	105000.00	0.00	other	\N	Delivered
9752100d-0632-42f3-941c-f4d5b45b7ced	AR-00033	0f698fff-72e1-4c09-8456-fbf96a1650a5	2025-10-11	2025-11-25			2025-10-31 16:06:44.648299+00	2025-11-18 12:05:28.653048+00	135000.00	90000.00	135000.00	other	\N	In Process
167bd157-7439-4112-b0b8-8075f3fd9de8	AR-00060	875e833f-42a4-466f-91c0-f2fee9a9fdee	2025-11-17	2025-12-02			2025-11-17 11:50:16.43424+00	2025-11-18 12:08:31.676386+00	210000.00	110000.00	\N	other	aa9bca57-ccff-47a3-9e42-c93cbe855f67	In Process
6f789bd2-215f-4e5a-8ddd-cac4d2df783a	AR-00029	23362277-ec69-4efd-9a94-a65c1254a83c	2025-10-06	2025-12-10			2025-10-31 15:54:31.123902+00	2025-11-18 12:18:29.445426+00	210000.00	100000.00	210000.00	other	\N	In Process
b573e9bc-d314-4e0a-8e34-216bea63cdfd	AR-00049	3c346072-215d-4db3-8e5f-43edd6f378c9	2025-11-03	2025-12-12			2025-11-03 14:54:50.663134+00	2025-11-18 12:35:45.571893+00	325000.00	125000.00	200000.00	other	acd317a4-6bcc-48c1-b67f-8ca1b4bb96c8	In Process
dc1e0ba9-98e1-40a2-b8e0-db64ea3c8604	AR-00053	4ec666d6-deca-40da-beda-256b51234ce7	2025-11-12	2025-12-15			2025-11-12 09:44:19.012376+00	2025-11-18 12:37:18.397603+00	55000.00	55000.00	\N	other	\N	In Process
0e6b0142-6ff4-4a7f-a816-b45030731631	AR-00041	c7654bce-acbc-4df7-9045-cf6872b6a6e7	2025-10-29	2025-12-15			2025-11-01 08:07:52.121937+00	2025-11-18 12:38:02.486976+00	155000.00	100000.00	55000.00	other	\N	In Process
805c0bf2-b436-48e9-bac4-cfbbfe60b6aa	AR-00012	a982f98f-1dc6-4b56-842e-99f675500004	2025-08-30	2025-12-20			2025-10-30 19:08:35.38308+00	2025-11-18 12:39:37.287531+00	350000.00	160000.00	350000.00	other	\N	In Process
ac4c0655-e060-4847-b4a4-29205da4707f	AR-00039	0f342446-b200-4941-a9bd-3db4e5e1ed47	2025-10-27	2025-12-31			2025-10-31 16:32:14.438009+00	2025-11-18 12:55:08.367637+00	72000.00	40000.00	32000.00	other	\N	In Process
9cc26631-0953-4ac2-9555-9d63b33fb987	AR-00055	faa983e2-773e-46b2-8bec-8d5e88b0e3c2	2025-11-13	2025-12-24			2025-11-13 19:06:42.028281+00	2025-11-18 13:08:17.584326+00	200000.00	50000.00	\N	other	368c7362-1a40-4303-9e61-85045740b2d4	In Process
0db71fcf-acc2-43c9-9480-701229ac8318	AR-00063	5889d0c8-7461-47af-a658-3640e1a7f79a	2025-11-19	2026-01-18			2025-11-19 12:08:50.489212+00	2025-11-19 12:08:50.489212+00	1000000.00	\N	\N	other	\N	In Process
84ec2eda-cce0-44a3-91eb-2e9e2eb8f72e	AR-00066	89434fe1-94c2-42d2-9cfd-26b68300b133	2025-11-23	2025-12-10			2025-11-23 10:00:46.612108+00	2025-11-23 10:00:46.612108+00	180000.00	120000.00	\N	other	1c2d5544-fc0a-4804-ad28-a1259420f5cc	In Process
ac05b210-81a0-4aaa-b947-504fd48c0754	AR-00036	53f8721f-2809-4827-9ede-a40cfb97d7a5	2025-10-16	2025-11-22			2025-10-31 16:17:40.050016+00	2025-11-25 14:11:03.308948+00	160000.00	128000.00	160000.00	other	\N	Delivered
38e728dd-b176-444a-9180-976b32b3c318	AR-00004	1dddfc2f-d913-4909-bf79-f49ee20e3101	2025-07-24	2025-11-20			2025-10-30 14:56:39.542474+00	2025-11-25 14:12:45.948032+00	347000.00	265000.00	195000.00	other	\N	Delivered
08bffa47-9ea5-44ee-8ea1-4cc71500503b	AR-00010	fa078972-be35-4a96-98a1-398f05f13276	2025-08-19	2025-11-09			2025-10-30 19:00:11.589065+00	2025-11-25 20:13:49.190999+00	290000.00	100000.00	240000.00	other	\N	Delivered
46e94509-ad3d-4d09-b3a0-85c2cd5b9bc5	AR-00069	0929cf57-d9c2-45ff-95f8-07e721ded418	2025-11-29	2025-12-06			2025-11-29 09:24:00.304657+00	2025-11-29 09:24:00.304657+00	145000.00	95000.00	\N	other	f6732f40-3e1e-466c-b1ca-0eadd07a4f84	In Process
0205e1e2-f5e2-4f1f-98f7-4049c677a6ab	AR-00017	835ffb68-c3c0-4ec5-8dfc-bc8f6667faea	2025-09-08	2025-11-15			2025-10-30 19:32:53.150034+00	2025-11-18 11:07:20.054457+00	290000.00	290000.00	190000.00	other	\N	Delivered
812c9c74-460b-4d18-912b-083c3aff3862	AR-00054	af1b6ca0-a41a-4d4b-a851-b7f481c566e2	2025-11-13	2025-12-24			2025-11-13 19:00:42.885256+00	2025-11-18 11:59:37.443428+00	\N	\N	\N	other	0f486a4d-14fa-4837-974e-ff72df408cdb	In Process
bb761892-1714-4007-a293-14e8b6cb38b2	AR-00056	89941f9a-8a61-4a43-a823-b1824109958a	2025-11-13	2025-12-24			2025-11-13 19:18:59.348128+00	2025-11-18 12:00:23.962903+00	\N	\N	\N	other	8c3a5c5e-e093-4b49-9541-718fb8e6e159	In Process
38852765-172b-47d0-a056-45916a80cebb	AR-00038	df0cc1d0-0526-4ec3-bd60-e7785d094ee0	2025-10-20	2025-11-30			2025-10-31 16:29:05.58093+00	2025-11-18 12:07:39.733475+00	360000.00	225000.00	0.00	other	\N	In Process
7f3f22a6-a7d5-443c-84cc-14dc1a8563bd	AR-00030	a940430b-ecdf-41b1-a2a9-0c98dd8523d8	2025-10-06	2025-12-10			2025-10-31 15:57:15.50019+00	2025-11-18 12:33:24.107581+00	215000.00	100000.00	215000.00	other	\N	In Process
be05b835-4149-4376-9eda-b197cbc31e62	AR-00035	8fb63f9c-1892-4eb6-8d80-919ea6b8ce20	2025-10-13	2025-12-15			2025-10-31 16:12:44.005012+00	2025-11-18 12:38:35.187917+00	300000.00	200000.00	200000.00	other	\N	In Process
8205d83a-576a-4eb4-b43c-224bfea1cde8	AR-00005	bbe5e066-6810-46f1-9f20-be8c1e9898ef	2025-08-02	2025-12-25			2025-10-30 18:28:50.256211+00	2025-11-18 12:53:50.906141+00	290000.00	150000.00	190000.00	other	\N	In Process
f8d8e863-72a1-4e0d-9625-8d2e4e715548	AR-00032	f42ddc39-94e5-4e3c-ab6b-8d3e87e929ab	2025-10-05	2025-12-01			2025-10-31 16:04:18.411193+00	2025-11-18 13:08:59.836031+00	\N	\N	0.00	other	\N	In Process
d3099450-4f50-45bc-b356-a82d84a78b71	AR-00064	6b130ad9-cc01-40d6-8a88-4400a6c01cd1	2025-11-22	2025-12-06			2025-11-22 12:13:05.485705+00	2025-11-22 12:13:05.485705+00	55000.00	40000.00	\N	other	aa436794-139d-497e-b550-09a79db1909e	In Process
50e84559-282c-4165-a575-c30fd1917962	AR-00022	d4cb76cd-9a34-484b-be96-4dce61fbdd5d	2025-09-14	2025-11-05			2025-10-30 19:45:46.177969+00	2025-11-22 20:58:38.46739+00	280000.00	200000.00	180000.00	other	\N	Delivered
c91056db-fdd4-4721-ab3b-026675e5e56b	AR-00067	e4fadd96-46ea-4546-a823-1c882e919aec	2025-11-24	2025-12-10			2025-11-24 13:28:49.877505+00	2025-11-24 13:31:16.038154+00	62000.00	40000.00	\N	other	89f8302e-04a5-44b2-b2e6-a83f31a87aaf	In Process
6438f658-8373-4f01-b87a-1282963e12be	AR-00058	4070907e-979f-4687-8706-1ed5aa5c59cd	2025-11-13	2025-11-20			2025-11-15 10:31:05.761403+00	2025-11-25 14:26:58.382296+00	\N	\N	\N	other	3be0567e-59f0-42d0-9944-ee9aae4a51e2	Delivered
061121a0-b6d4-4111-af68-5eccf0cbd500	AR-00070	8085b51d-d708-46f2-818b-ffce51ed6e13	2025-11-29	2025-12-25			2025-11-29 14:03:43.893579+00	2025-11-29 14:03:43.893579+00	55000.00	30000.00	\N	other	b7c33114-aeb7-4555-b898-6744fafda847	In Process
894b09f5-ec22-4074-b799-5d51cf0dd544	AR-00037	465f6c6c-98d0-4a42-86c5-b80687670e07	2025-10-18	2025-12-07			2025-10-31 16:26:31.146381+00	2025-11-08 01:36:26.024122+00	\N	0.00	0.00	other	\N	In Process
d501a52e-d215-4d96-afcb-6e808d4c682b	AR-00050	7cdddbc8-f777-4756-803e-674cf68e7ede	2025-11-05	2025-12-05			2025-11-05 12:16:14.412574+00	2025-11-08 01:36:26.024122+00	42000.00	0.00	42000.00	other	1d4f531b-d685-4cd9-9c87-266be100ab2f	In Process
e92e8ea5-92ae-4f9d-9356-7eb6d79766b8	AR-00052	3259c031-5d4c-4b8f-b43c-9f637e8b3837	2025-11-08	2025-11-27			2025-11-10 12:12:38.232611+00	2025-11-10 12:12:38.232611+00	\N	\N	\N	other	9c8872eb-2c44-4f5a-ba61-130c708f6e7a	In Process
89436762-bc61-402f-817b-dd8291efb0d5	AR-00014	3d2940c1-696f-49e6-a7e4-243a67b197aa	2025-09-01	2025-10-15			2025-10-30 19:17:17.333474+00	2025-11-17 20:39:39.758604+00	295000.00	295000.00	145000.00	other	\N	Delivered
41d8104f-2e5b-4f1c-9ebc-6260cf6b65df	AR-00019	6c9502f3-3c39-44d3-b321-f0fa14d9289d	2025-09-10	2025-10-15			2025-10-30 19:37:50.471802+00	2025-11-17 20:40:15.043158+00	130000.00	130000.00	80000.00	other	\N	Delivered
40404163-9ad4-4994-a41f-6317ff41a08c	AR-00025	deea44ad-832c-44e0-9d74-989d023c594e	2025-09-21	2025-10-25			2025-10-30 20:05:24.329104+00	2025-11-17 20:40:36.500066+00	360000.00	360000.00	200000.00	other	\N	Delivered
a34dd14c-fffc-41dc-a032-c9d52c1cca36	AR-00023	9b98f8d6-6138-4e25-a4c0-4f2f6fa14eee	2025-09-16	2025-10-25			2025-10-30 19:54:58.960791+00	2025-11-17 20:40:55.908741+00	400000.00	400000.00	200000.00	other	\N	Delivered
997e880d-8c2b-44b3-93f9-5c6c5e5e7f50	AR-00013	7f366cb6-131c-49f6-89a8-b79c06d077e7	2025-09-15	2025-11-01			2025-10-30 19:13:23.292353+00	2025-11-17 20:41:26.007821+00	70000.00	70000.00	30000.00	other	\N	Delivered
77790ff1-a2f1-4e2f-a0ec-446d064b3a2b	AR-00031	14aee844-f930-42a4-945b-a42c41741dba	2025-10-11	2025-11-01			2025-10-31 15:59:58.367335+00	2025-11-17 20:41:52.886929+00	45000.00	45000.00	20000.00	other	\N	Delivered
53f6b83c-776f-401a-9f87-8c87ce26a4f9	AR-00040	c25a8fd7-6399-4b41-ada4-b4538ba70a14	2025-10-28	2025-12-20			2025-10-31 16:36:31.424661+00	2025-11-17 21:00:33.026131+00	950000.00	650000.00	500000.00	other	9c36ed29-59d1-45c4-85f7-ab191a7e05e3	In Process
85c7ee8e-0856-4e38-8478-9651a4aefcae	AR-00002	d6568454-70f5-4d3f-b83e-4c5d487ca77e	2025-07-17	2025-12-02			2025-10-29 14:02:14.217317+00	2025-11-17 20:37:49.934278+00	835000.00	635000.00	450000.00	other	\N	In Process
413e4b6e-5fc2-43a1-9013-e2df545f354e	AR-00028	337c5060-0c5d-497d-96d4-332fe2b8f4cd	2025-09-28	2025-11-02			2025-10-30 20:16:20.958364+00	2025-11-17 20:42:20.821298+00	80000.00	80000.00	40000.00	other	\N	Delivered
f357a7c4-919d-47d4-a046-abd7411bef1d	AR-00034	6acf65f1-7c75-4170-a488-a0f969a34327	2025-10-12	2025-11-02			2025-10-31 16:08:51.369968+00	2025-11-17 20:42:41.377368+00	105000.00	105000.00	105000.00	other	\N	Delivered
43ccc8ef-a034-46f5-ba89-7cc35f4fda0f	AR-00020	4dd042e3-0ac4-4ffb-9799-78101cd64956	2025-09-10	2025-11-05			2025-10-30 19:40:20.199601+00	2025-11-17 20:43:17.37991+00	275000.00	275000.00	275000.00	other	\N	Delivered
c84447b4-d0ea-44e6-a182-934c700e0dbe	AR-00062	a49ce56f-9b98-411e-9896-68dbbb20f202	2025-11-17	2025-12-24			2025-11-17 20:56:03.769938+00	2025-11-17 20:56:03.769938+00	125000.00	\N	\N	other	\N	In Process
5f5f7d80-b82a-46c2-afe4-c9a7cf6fd31a	AR-00003	127d3fec-45cc-48b9-92b4-42e29d61fb47	2025-07-21	2025-11-20			2025-10-30 14:40:07.951254+00	2025-11-17 21:05:32.430384+00	325000.00	325000.00	175001.00	other	\N	Delivered
9fc7dd4c-ea2b-4a1e-9ce3-c453344b6502	AR-00045	7d249a83-b62d-4d44-953e-0315ad567b2d	2025-11-03	2025-12-10			2025-11-03 14:47:10.626347+00	2025-11-17 21:07:22.69939+00	160000.00	100000.00	160000.00	other	\N	In Process
54b6e9e7-4e95-463f-992b-f334691b7a2a	AR-00046	8d21ce19-0b96-4a14-874f-2216e6970bad	2025-11-03	2025-11-18			2025-11-03 14:50:38.270982+00	2025-11-17 21:17:31.393662+00	266000.00	150000.00	270000.00	other	\N	In Process
9307894a-b229-4bf1-8963-54bd58d547d2	AR-00021	261ee7b1-9fee-4670-821f-d07e5e943cd1	2025-09-14	2025-11-20			2025-10-30 19:43:40.167447+00	2025-11-18 12:01:57.97201+00	340000.00	340000.00	140000.00	other	\N	Delivered
43f8792f-1a4c-4cf4-b507-d08e96ce4171	AR-00027	7e2ea9c6-31c8-4986-b5c5-b78db831168a	2025-09-27	2025-12-05			2025-10-30 20:11:42.062294+00	2025-11-18 12:10:25.037977+00	300000.00	150000.00	300000.00	other	\N	In Process
49974bee-454f-46c7-8c87-611e82b0eaab	AR-00048	73b007bd-c3e2-40b5-8d20-e5e48f9b050e	2025-11-03	2025-12-10			2025-11-03 14:53:36.272941+00	2025-11-18 12:34:31.228025+00	190000.00	100000.00	190000.00	other	\N	In Process
508f9460-e0f4-446f-9c4b-efe4417fa439	AR-00044	d76e4219-ef14-4a6f-b930-8db9de7317af	2025-11-03	2025-12-12			2025-11-03 14:46:05.219302+00	2025-11-18 12:36:10.777927+00	130000.00	65000.00	130000.00	other	\N	In Process
a239a178-44af-4d3f-ad86-91f20de0f2a7	AR-00042	e26a596c-a841-4fb2-9f73-b05362e42436	2025-11-03	2025-12-12			2025-11-03 14:44:36.835314+00	2025-11-18 12:36:51.131594+00	170000.00	170000.00	170000.00	other	\N	Delivered
69cae7bc-b329-4473-96ba-5ed12531b308	AR-00024	0c447be9-7e8f-4ca3-b446-4ec8486fef6a	2025-09-25	2025-12-20			2025-10-30 19:58:22.581395+00	2025-11-18 12:40:01.92158+00	400000.00	250000.00	400000.00	other	\N	In Process
d9f86d8e-3ddf-4504-b12d-2c5b3a43a785	AR-00026	907962a8-1308-4e8d-b2b0-1d92aea9178e	2025-09-25	2025-12-20			2025-10-30 20:07:47.771533+00	2025-11-18 12:41:25.584797+00	320000.00	170000.00	320000.00	other	\N	In Process
c397149f-9f92-4478-8b7f-28b394753e39	AR-00018	4cc8ce47-3421-4120-9778-d1b10a527d49	2025-09-10	2025-12-25			2025-10-30 19:35:22.035171+00	2025-11-18 12:54:24.891386+00	110000.00	60000.00	110000.00	other	\N	In Process
ae5c369b-6388-43f6-8c34-25bf72bd19b5	AR-00065	637713d8-51d5-4bf2-8ca4-fcd7408f9d5c	2025-11-21	2026-01-01			2025-11-22 12:22:18.393442+00	2025-11-22 12:22:18.393442+00	130000.00	65000.00	\N	other	d88215e0-a589-4158-b5ef-0bd9260480cb	In Process
e48a13a4-5286-4ab6-9f9b-854cbe6bd931	AR-00061	0278f7d7-41c8-4dbf-8ed1-27990e088738	2025-11-17	2025-11-24			2025-11-17 20:47:59.322784+00	2025-11-22 21:03:16.354292+00	56000.00	56000.00	\N	other	\N	Delivered
ba1b87ab-4c34-4966-9549-80784ed0bf00	AR-00016	2585665c-d342-42e2-8add-bb4d0397ce5e	2025-09-07	2025-12-01			2025-10-30 19:28:12.330181+00	2025-11-22 21:04:01.369655+00	505000.00	270000.00	335000.00	other	\N	In Process
8d0519bf-7dcb-4240-a514-2a05cc8614ab	AR-00015	7588c28b-2933-4223-91ea-91ef6c07da06	2025-09-02	2025-11-15			2025-10-30 19:22:50.711287+00	2025-11-25 14:13:28.788126+00	360000.00	260000.00	360000.00	other	\N	Delivered
999f5691-c5dc-4824-8b8a-abd7d19e8ff2	AR-00068	64516557-ea7d-4982-b222-0bcaecb81c8a	2025-11-29	2025-12-30			2025-11-29 08:28:44.849588+00	2025-11-29 11:01:23.226525+00	370000.00	200000.00	\N	other	daa56c40-22cb-46c4-b2da-006d2a4cbb05	In Process
\.


--
-- Data for Name: vendors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."vendors" ("id", "name", "contact_person", "phone", "email", "address", "notes", "created_at", "updated_at") FROM stdin;
ea3ce610-a121-430d-bb49-df5d2f8aaa9a	Master Nadeem	\N	\N	\N	\N		2025-11-08 01:58:35.592884+00	2025-11-08 01:58:35.592884+00
c162443d-f737-4f94-bd44-de3cc2566cc5	Jaffer	\N	\N	\N	\N		2025-11-08 00:54:46.373481+00	2025-11-08 02:39:44.639+00
\.


--
-- Data for Name: vendor_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."vendor_tags" ("id", "vendor_id", "tag_name", "created_at", "updated_at") FROM stdin;
ea625f91-7c8d-4497-a621-5502905f4703	c162443d-f737-4f94-bd44-de3cc2566cc5	Ammar, Ahsan, Some tags	2025-11-08 02:31:35.986805+00	2025-11-08 02:31:35.986805+00
3d638b14-0034-4d59-b9cc-5049ed838813	c162443d-f737-4f94-bd44-de3cc2566cc5	testing, jkhkjh,mbnnbm,mbmnb	2025-11-08 02:39:45.077157+00	2025-11-08 02:39:45.077157+00
\.


--
-- Data for Name: general_ledger; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."general_ledger" ("id", "entry_date", "particulars", "debit", "credit", "balance", "entry_type", "notes", "order_id", "vendor_id", "created_at", "updated_at", "tag_id") FROM stdin;
64df9b55-b254-4f10-b9b8-06ff7adf909d	2025-09-27	Advance Payment - Order AR-00027 from DANIYAL	150000.00	\N	3645000.00	order_payment	Advance payment recorded at booking via other	43f8792f-1a4c-4cf4-b507-d08e96ce4171	\N	2025-10-30 20:11:42.062294+00	2025-11-08 01:03:07.180769+00	\N
bd1945a0-664e-4d46-9bf8-415a170020bf	2025-09-28	Advance Payment - Order AR-00028 from IMRAN ASLAM	40000.00	\N	3685000.00	order_payment	Advance payment recorded at booking via other	413e4b6e-5fc2-43a1-9013-e2df545f354e	\N	2025-10-30 20:16:20.958364+00	2025-11-08 01:03:07.180769+00	\N
85c59f7d-aec4-4143-967f-983f67f73d18	2025-10-06	Advance Payment - Order AR-00029 from ARHAM	100000.00	\N	3785000.00	order_payment	Advance payment recorded at booking via other	6f789bd2-215f-4e5a-8ddd-cac4d2df783a	\N	2025-10-31 15:54:31.123902+00	2025-11-08 01:03:07.180769+00	\N
de15420d-8209-4454-b0b7-f095370d1124	2025-10-06	Advance Payment - Order AR-00030 from UZAIR ALI 	100000.00	\N	3885000.00	order_payment	Advance payment recorded at booking via other	7f3f22a6-a7d5-443c-84cc-14dc1a8563bd	\N	2025-10-31 15:57:15.50019+00	2025-11-08 01:03:07.180769+00	\N
a61cf635-928c-41c3-8d0a-c31a9d2ea71a	2025-07-17	Advance Payment - Order AR-00001 from SOHAIB RASHID	50000.00	\N	50000.00	order_payment	Advance payment recorded at booking via bank	15f5c2b5-fd18-4c1a-adad-2bf1cc627fc3	\N	2025-10-29 11:13:31.371105+00	2025-11-08 01:03:07.180769+00	\N
b93f70f2-190e-48cb-99b7-3c295693b06c	2025-07-17	Advance Payment - Order AR-00002 from SOHAIB RASHID	385000.00	\N	435000.00	order_payment	Advance payment recorded at booking via other	85c7ee8e-0856-4e38-8478-9651a4aefcae	\N	2025-10-29 14:02:14.217317+00	2025-11-08 01:03:07.180769+00	\N
915efd80-8f28-4eeb-bea5-64cc9b5656de	2025-07-21	Advance Payment - Order AR-00003 from MRS AMIR	100000.00	\N	535000.00	order_payment	Advance payment recorded at booking via other	5f5f7d80-b82a-46c2-afe4-c9a7cf6fd31a	\N	2025-10-30 14:40:07.951254+00	2025-11-08 01:03:07.180769+00	\N
58221db0-e755-41aa-9fbc-74c3d45c9217	2025-07-24	Advance Payment - Order AR-00004 from M BASIT 	130000.00	\N	665000.00	order_payment	Advance payment recorded at booking via other	38e728dd-b176-444a-9180-976b32b3c318	\N	2025-10-30 14:56:39.542474+00	2025-11-08 01:03:07.180769+00	\N
2673743e-ef5d-452d-a541-7d8c98fb5310	2025-08-02	Advance Payment - Order AR-00005 from HAMMAD SANI	150000.00	\N	815000.00	order_payment	Advance payment recorded at booking via other	8205d83a-576a-4eb4-b43c-224bfea1cde8	\N	2025-10-30 18:28:50.256211+00	2025-11-08 01:03:07.180769+00	\N
acd1fd9a-a88b-47d3-ad44-91b1a1dd7bff	2025-08-06	Advance Payment - Order AR-00006 from SH ASIM	50000.00	\N	865000.00	order_payment	Advance payment recorded at booking via other	bafe46ef-6777-4b06-af1d-afd270354c0c	\N	2025-10-30 18:34:21.882956+00	2025-11-08 01:03:07.180769+00	\N
efa74552-4d16-427c-b069-ce214b6a309d	2025-08-16	Advance Payment - Order AR-00009 from HASSAN AMIR	200000.00	\N	1065000.00	order_payment	Advance payment recorded at booking via other	7b5c58db-90b4-4a99-8bb6-60e04574f9de	\N	2025-10-30 18:57:50.71614+00	2025-11-08 01:03:07.180769+00	\N
bc87241c-ca88-4fef-9fcb-ed890eea9a29	2025-08-30	Advance Payment - Order AR-00012 from ZOHAIB ZAHID 	160000.00	\N	1225000.00	order_payment	Advance payment recorded at booking via other	805c0bf2-b436-48e9-bac4-cfbbfe60b6aa	\N	2025-10-30 19:08:35.38308+00	2025-11-08 01:03:07.180769+00	\N
40339123-4ca5-4daf-bf2d-8ee8b10ea40b	2025-09-01	Advance Payment - Order AR-00014 from ADEEL	145000.00	\N	1370000.00	order_payment	Advance payment recorded at booking via other	89436762-bc61-402f-817b-dd8291efb0d5	\N	2025-10-30 19:17:17.333474+00	2025-11-08 01:03:07.180769+00	\N
808317df-b483-4b12-95b9-80a9f5646878	2025-09-02	Advance Payment - Order AR-00015 from ABDUL TAUHEED 	260000.00	\N	1630000.00	order_payment	Advance payment recorded at booking via other	8d0519bf-7dcb-4240-a514-2a05cc8614ab	\N	2025-10-30 19:22:50.711287+00	2025-11-08 01:03:07.180769+00	\N
21aca052-60ad-4ac8-a6a4-d087f3d91303	2025-09-07	Advance Payment - Order AR-00016 from AUZAN NAEEM	200000.00	\N	1830000.00	order_payment	Advance payment recorded at booking via other	ba1b87ab-4c34-4966-9549-80784ed0bf00	\N	2025-10-30 19:28:12.330181+00	2025-11-08 01:03:07.180769+00	\N
435a8d90-be4f-43a4-8403-e56334e3fce4	2025-09-08	Advance Payment - Order AR-00017 from SH HASSAN QASIM	100000.00	\N	1930000.00	order_payment	Advance payment recorded at booking via other	0205e1e2-f5e2-4f1f-98f7-4049c677a6ab	\N	2025-10-30 19:32:53.150034+00	2025-11-08 01:03:07.180769+00	\N
dff8c9d6-0ca4-44b3-9e3a-a8c8b6c4e545	2025-09-10	Advance Payment - Order AR-00018 from HASEEB SALMAN	60000.00	\N	1990000.00	order_payment	Advance payment recorded at booking via other	c397149f-9f92-4478-8b7f-28b394753e39	\N	2025-10-30 19:35:22.035171+00	2025-11-08 01:03:07.180769+00	\N
9256cf65-36f0-43fc-953b-8f219d65937d	2025-09-10	Advance Payment - Order AR-00019 from ADEEL & FARAZ	80000.00	\N	2070000.00	order_payment	Advance payment recorded at booking via other	41d8104f-2e5b-4f1c-9ebc-6260cf6b65df	\N	2025-10-30 19:37:50.471802+00	2025-11-08 01:03:07.180769+00	\N
c08cd23e-84b3-4120-addc-37956b2a458c	2025-09-10	Advance Payment - Order AR-00020 from ANS MAHAD	275000.00	\N	2345000.00	order_payment	Advance payment recorded at booking via other	43ccc8ef-a034-46f5-ba89-7cc35f4fda0f	\N	2025-10-30 19:40:20.199601+00	2025-11-08 01:03:07.180769+00	\N
326f0d0e-4c1d-4d50-9daf-7bd135f2b77a	2025-09-14	Advance Payment - Order AR-00021 from SAFEER REHMAN	200000.00	\N	2545000.00	order_payment	Advance payment recorded at booking via other	9307894a-b229-4bf1-8963-54bd58d547d2	\N	2025-10-30 19:43:40.167447+00	2025-11-08 01:03:07.180769+00	\N
5b3a518e-f878-4ed7-a49b-db8d378c4c6c	2025-09-14	Advance Payment - Order AR-00022 from HARIS AMIN	100000.00	\N	2645000.00	order_payment	Advance payment recorded at booking via other	50e84559-282c-4165-a575-c30fd1917962	\N	2025-10-30 19:45:46.177969+00	2025-11-08 01:03:07.180769+00	\N
383a153c-9fa5-4cb0-8761-1230fe209f7c	2025-09-15	Advance Payment - Order AR-00013 from HAJI ADEEL 	30000.00	\N	2675000.00	order_payment	Advance payment recorded at booking via other	997e880d-8c2b-44b3-93f9-5c6c5e5e7f50	\N	2025-10-30 19:13:23.292353+00	2025-11-08 01:03:07.180769+00	\N
93e2505c-e1e9-472f-878d-389799fa52c8	2025-10-11	Advance Payment - Order AR-00031 from MR IMRAN 	20000.00	\N	3905000.00	order_payment	Advance payment recorded at booking via other	77790ff1-a2f1-4e2f-a0ec-446d064b3a2b	\N	2025-10-31 15:59:58.367335+00	2025-11-08 01:03:07.180769+00	\N
8ba385b3-a5d3-4b9e-b86e-0806de35f46a	2025-10-11	Advance Payment - Order AR-00033 from AMMAR YOUSAF	90000.00	\N	3995000.00	order_payment	Advance payment recorded at booking via other	9752100d-0632-42f3-941c-f4d5b45b7ced	\N	2025-10-31 16:06:44.648299+00	2025-11-08 01:03:07.180769+00	\N
05d73406-6b51-4896-af35-27b2050ec5c2	2025-09-16	Advance Payment - Order AR-00023 from ABDUL MOEEZ	200000.00	\N	2875000.00	order_payment	Advance payment recorded at booking via other	a34dd14c-fffc-41dc-a032-c9d52c1cca36	\N	2025-10-30 19:54:58.960791+00	2025-11-08 01:03:07.180769+00	\N
bb106caa-7f0b-4e47-a91a-b6cd19a7ff1d	2025-09-21	Advance Payment - Order AR-00025 from SHERAZ	200000.00	\N	3075000.00	order_payment	Advance payment recorded at booking via other	40404163-9ad4-4994-a41f-6317ff41a08c	\N	2025-10-30 20:05:24.329104+00	2025-11-08 01:03:07.180769+00	\N
ec855e74-ebfd-4d4a-8bc9-c5e401f9d8df	2025-10-12	Advance Payment - Order AR-00034 from UMAIR IMRAN	50000.00	\N	4045000.00	order_payment	Advance payment recorded at booking via other	f357a7c4-919d-47d4-a046-abd7411bef1d	\N	2025-10-31 16:08:51.369968+00	2025-11-08 01:03:07.180769+00	\N
30d5aa8f-dec4-43e5-8845-8225ca2a7546	2025-10-13	Advance Payment - Order AR-00035 from ALI ( HARIS )	100000.00	\N	4145000.00	order_payment	Advance payment recorded at booking via other	be05b835-4149-4376-9eda-b197cbc31e62	\N	2025-10-31 16:12:44.005012+00	2025-11-08 01:03:07.180769+00	\N
69b00c6e-f02a-411d-b781-00cca26343be	2025-10-16	Advance Payment - Order AR-00036 from NABEEL KHAWAR 	128000.00	\N	4273000.00	order_payment	Advance payment recorded at booking via other	ac05b210-81a0-4aaa-b947-504fd48c0754	\N	2025-10-31 16:17:40.050016+00	2025-11-08 01:03:07.180769+00	\N
6d6db029-ffa1-43d3-9a92-615f98731e54	2025-10-27	Advance Payment - Order AR-00039 from HASHAM	40000.00	\N	4313000.00	order_payment	Advance payment recorded at booking via other	ac4c0655-e060-4847-b4a4-29205da4707f	\N	2025-10-31 16:32:14.438009+00	2025-11-08 01:03:07.180769+00	\N
461b16c7-2134-479b-9c99-14aaf4cd8767	2025-10-28	Advance Payment - Order AR-00040 from UMAIR ALI	450000.00	\N	4763000.00	order_payment	Advance payment recorded at booking via other	53f6b83c-776f-401a-9f87-8c87ce26a4f9	\N	2025-10-31 16:36:31.424661+00	2025-11-08 01:03:07.180769+00	\N
53d52653-a4ba-45be-9f86-f96ef18f1afe	2025-10-29	Advance Payment - Order AR-00041 from EHTASHAM	100000.00	\N	4863000.00	order_payment	Advance payment recorded at booking via other	0e6b0142-6ff4-4a7f-a816-b45030731631	\N	2025-11-01 08:07:52.121937+00	2025-11-08 01:03:07.180769+00	\N
4ca5e69d-3deb-4856-a40b-5b99c8fdfddb	2025-11-03	Order Payment - AR-00001 from SOHAIB RASHID	65000.00	\N	4928000.00	order_payment	Payment via other	15f5c2b5-fd18-4c1a-adad-2bf1cc627fc3	\N	2025-11-03 13:49:20.643718+00	2025-11-08 01:03:07.180769+00	\N
55f7d359-61b5-46dc-93a2-e15ffbb2aafc	2025-11-03	Order Payment - AR-00003 from MRS AMIR	50000.00	\N	4978000.00	order_payment	Payment via other	5f5f7d80-b82a-46c2-afe4-c9a7cf6fd31a	\N	2025-11-03 14:05:06.642609+00	2025-11-08 01:03:07.180769+00	\N
12345276-5e8d-4fde-9f22-fbe78df582fc	2025-11-03	Order Payment - AR-00004 from M BASIT 	135000.00	\N	5113000.00	order_payment	Payment via other	38e728dd-b176-444a-9180-976b32b3c318	\N	2025-11-03 14:11:35.807227+00	2025-11-08 01:03:07.180769+00	\N
743e7d69-f759-462f-b711-b2913621152f	2025-11-03	Order Payment - AR-00006 from SH ASIM	55000.00	\N	5168000.00	order_payment	Payment via other	bafe46ef-6777-4b06-af1d-afd270354c0c	\N	2025-11-03 14:14:30.955539+00	2025-11-08 01:03:07.180769+00	\N
84c1ccd5-722b-4cda-a32f-76476ce5f64f	2025-11-03	Order Payment - AR-00007 from HASSAN SIALKOT	400000.00	\N	5568000.00	order_payment	Payment via other	72974b6f-fc69-49af-b02c-dde30673e0f2	\N	2025-11-03 14:16:25.588883+00	2025-11-08 01:03:07.180769+00	\N
127a0092-ed22-4e04-8302-71ce13616bd7	2025-11-03	Order Payment - AR-00009 from HASSAN AMIR	100000.00	\N	5668000.00	order_payment	Payment via other	7b5c58db-90b4-4a99-8bb6-60e04574f9de	\N	2025-11-03 14:17:16.36386+00	2025-11-08 01:03:07.180769+00	\N
ecd7e6a0-de4f-4aef-82ed-139b0a707056	2025-11-03	Order Payment - AR-00010 from AHSAN ASIF	100000.00	\N	5768000.00	order_payment	Payment via other	08bffa47-9ea5-44ee-8ea1-4cc71500503b	\N	2025-11-03 14:18:13.955211+00	2025-11-08 01:03:07.180769+00	\N
42d6859f-9f12-4dfa-b22a-fab6a33d3c01	2025-11-03	Order Payment - AR-00013 from HAJI ADEEL 	40000.00	\N	5808000.00	order_payment	Payment via other	997e880d-8c2b-44b3-93f9-5c6c5e5e7f50	\N	2025-11-03 14:21:31.759203+00	2025-11-08 01:03:07.180769+00	\N
cd2ff71a-ef73-4f11-b23f-a78caa1e36db	2025-11-03	Order Payment - AR-00014 from ADEEL	150000.00	\N	5958000.00	order_payment	Payment via other	89436762-bc61-402f-817b-dd8291efb0d5	\N	2025-11-03 14:22:59.666996+00	2025-11-08 01:03:07.180769+00	\N
c8509461-4671-447e-8198-3e36018c7e8b	2025-11-03	Order Payment - AR-00017 from SH HASSAN QASIM	100000.00	\N	6058000.00	order_payment	Payment via other	0205e1e2-f5e2-4f1f-98f7-4049c677a6ab	\N	2025-11-03 14:24:26.283514+00	2025-11-08 01:03:07.180769+00	\N
31238a4d-e8bd-4cd1-bc39-3561937a3c15	2025-11-03	Order Payment - AR-00021 from SAFEER REHMAN	100000.00	\N	6158000.00	order_payment	Payment via other	9307894a-b229-4bf1-8963-54bd58d547d2	\N	2025-11-03 14:29:31.599335+00	2025-11-08 01:03:07.180769+00	\N
66e04cf9-7e04-40c2-8f51-4189e61980e2	2025-11-03	Order Payment - AR-00022 from HARIS AMIN	100000.00	\N	6258000.00	order_payment	Payment via other	50e84559-282c-4165-a575-c30fd1917962	\N	2025-11-03 14:30:12.210804+00	2025-11-08 01:03:07.180769+00	\N
28486490-c0be-48c2-9834-a79a039f5b2c	2025-11-03	Order Payment - AR-00035 from ALI ( HARIS )	100000.00	\N	6358000.00	order_payment	Payment via other	be05b835-4149-4376-9eda-b197cbc31e62	\N	2025-11-03 14:37:23.682759+00	2025-11-08 01:03:07.180769+00	\N
2bc5bafe-cdd4-4e87-ae18-323fca5ee292	2025-11-03	Advance Payment - Order AR-00042 from BILAL ( MRS NAVEED )	100000.00	\N	6458000.00	order_payment	Advance payment recorded at booking via other	a239a178-44af-4d3f-ad86-91f20de0f2a7	\N	2025-11-03 14:44:36.835314+00	2025-11-08 01:03:07.180769+00	\N
a1c7909a-aeae-4950-a6c8-235d842a5dba	2025-11-03	Advance Payment - Order AR-00044 from HAMZA KAYANI	65000.00	\N	6523000.00	order_payment	Advance payment recorded at booking via other	508f9460-e0f4-446f-9c4b-efe4417fa439	\N	2025-11-03 14:46:05.219302+00	2025-11-08 01:03:07.180769+00	\N
55afffb1-0bf0-494d-b30b-4c2806a5e306	2025-11-03	Advance Payment - Order AR-00045 from AMEER AFRICA	100000.00	\N	6623000.00	order_payment	Advance payment recorded at booking via other	9fc7dd4c-ea2b-4a1e-9ce3-c453344b6502	\N	2025-11-03 14:47:10.626347+00	2025-11-08 01:03:07.180769+00	\N
d632a0b4-9dc4-4fa2-8963-b7016a19d8ce	2025-11-03	Advance Payment - Order AR-00046 from MOBEEN KHALIL	150000.00	\N	6773000.00	order_payment	Advance payment recorded at booking via other	54b6e9e7-4e95-463f-992b-f334691b7a2a	\N	2025-11-03 14:50:38.270982+00	2025-11-08 01:03:07.180769+00	\N
e7b811a4-9812-4846-8cf4-b338815eee98	2025-11-03	Advance Payment - Order AR-00047 from BASIT FAMILY	800000.00	\N	7573000.00	order_payment	Advance payment recorded at booking via other	00ee4988-2414-4b6a-8801-015896824c95	\N	2025-11-03 14:52:08.300749+00	2025-11-08 01:03:07.180769+00	\N
4bf2398f-eca1-4480-aeeb-1d007fc5ebca	2025-11-03	Advance Payment - Order AR-00048 from SADAQAT ISRA	100000.00	\N	7673000.00	order_payment	Advance payment recorded at booking via other	49974bee-454f-46c7-8c87-611e82b0eaab	\N	2025-11-03 14:53:36.272941+00	2025-11-08 01:03:07.180769+00	\N
3057cea7-661e-4f69-9c75-5ed889a613e8	2025-11-03	Advance Payment - Order AR-00049 from UMAIR CHEEMA	125000.00	\N	7798000.00	order_payment	Advance payment recorded at booking via other	b573e9bc-d314-4e0a-8e34-216bea63cdfd	\N	2025-11-03 14:54:50.663134+00	2025-11-08 01:03:07.180769+00	\N
d6abfaa0-2424-4926-bcac-866d277f6dcc	2025-11-03	Order Payment - AR-00025 from SHERAZ	160000.00	\N	7958000.00	order_payment	Payment via other	40404163-9ad4-4994-a41f-6317ff41a08c	\N	2025-11-03 18:56:09.78345+00	2025-11-08 01:03:07.180769+00	\N
6525ac2f-d963-4605-a333-9c14797f4ce9	2025-11-06	Order Payment - AR-00031 from MR IMRAN 	25000.00	\N	7983000.00	order_payment	Payment via other	77790ff1-a2f1-4e2f-a0ec-446d064b3a2b	\N	2025-11-06 10:58:55.032089+00	2025-11-08 01:03:07.180769+00	\N
5bcdbee7-d98e-4fc7-8b99-12548ea5ded1	2025-11-06	Order Payment - AR-00003 from MRS AMIR	175000.00	\N	8158000.00	order_payment	Payment via other	5f5f7d80-b82a-46c2-afe4-c9a7cf6fd31a	\N	2025-11-06 20:09:47.433437+00	2025-11-08 01:03:07.180769+00	\N
2bafb59f-80ee-4157-bbda-aa90a3614f82	2025-11-06	Order Payment - AR-00019 from ADEEL & FARAZ	50000.00	\N	8208000.00	order_payment	Payment via other	41d8104f-2e5b-4f1c-9ebc-6260cf6b65df	\N	2025-11-06 20:11:19.066892+00	2025-11-08 01:03:07.180769+00	\N
0b961fa7-4b86-4ef9-b128-4106a8f7da18	2025-11-06	Order Payment - AR-00023 from ABDUL MOEEZ	200000.00	\N	8408000.00	order_payment	Payment via other	a34dd14c-fffc-41dc-a032-c9d52c1cca36	\N	2025-11-06 20:12:16.955631+00	2025-11-08 01:03:07.180769+00	\N
fa299a1d-35e6-4619-8d96-7beba69ad3ec	2025-09-25	Advance Payment - Order AR-00024 from ZAHID FAMILY 	250000.00	\N	3325000.00	order_payment	Advance payment recorded at booking via other	69cae7bc-b329-4473-96ba-5ed12531b308	\N	2025-10-30 19:58:22.581395+00	2025-11-08 01:03:07.180769+00	\N
e25cda7a-7a8a-442c-b986-d0abe3d9cb42	2025-09-25	Advance Payment - Order AR-00026 from SHAHEER	170000.00	\N	3495000.00	order_payment	Advance payment recorded at booking via other	d9f86d8e-3ddf-4504-b12d-2c5b3a43a785	\N	2025-10-30 20:07:47.771533+00	2025-11-08 01:03:07.180769+00	\N
\.


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."order_items" ("id", "order_id", "order_type", "description", "created_at", "updated_at") FROM stdin;
4d960bc6-a112-409c-a4bc-f73de112bcae	a34dd14c-fffc-41dc-a032-c9d52c1cca36	mehndi	NEW POWDER PINK DSN ONLY MOTIF\t\t\nBORDER ON SLEEVES \t\t\nMOTIF ON SHOULDER \t\t\nWITH EMB SUIT \t\t\nIN HK COLOR\t\t	2025-11-17 20:40:56.579668+00	2025-11-17 20:40:56.579668+00
b7108ab3-be38-48f1-bafa-f1e77c0aad2f	a34dd14c-fffc-41dc-a032-c9d52c1cca36	other	MEHNDI 2\nNEW SKIN EMB SHERWANI DSN ON\t\t\t\nLONG OPEN PRINCE COAT \t\t\t\nIN SMALL MOTIFS \t\t\t\nWITH PLAIN SUIT\t\t\t\n\t\t\t\n\t\t\t	2025-11-17 20:40:56.579668+00	2025-11-17 20:40:56.579668+00
12aaa610-4b68-47c4-8eaa-c624cf30d25e	a34dd14c-fffc-41dc-a032-c9d52c1cca36	wallima	BROWN TR \t\t\t\nDOUBLE BREASTED COAT \t\t\t\nWITH PANT \t\t\t\nOFF WHITE PLAIN SHIRT\t\t\t\nPIC DSN\t\t\t	2025-11-17 20:40:56.579668+00	2025-11-17 20:40:56.579668+00
569dc474-7e28-4003-9342-a41315026eaf	a34dd14c-fffc-41dc-a032-c9d52c1cca36	barat	OTHER EVENT\n2PC IN ZINC COLOR \t\t\nSAME SPIDER DSN \t\t\nLT 038 LOT B CLR 4\t\t\nPLEATED SHIRT\t\t\n\t\t\nABDUL MOEEZ\t\t\nABDUL MANAN\t\t	2025-11-17 20:40:56.579668+00	2025-11-17 20:40:56.579668+00
c0dbda74-412d-4534-852e-9e5aac8e5b9e	999f5691-c5dc-4824-8b8a-abd7d19e8ff2	mehndi	BF DSN ON OPEN PRINCE COAT WITH EMB SUIT ON OLIVE GREEN CLR WITH SHOES	2025-11-29 11:01:24.306799+00	2025-11-29 11:01:24.306799+00
92a32c6e-0b5f-4cd6-a610-aa06a254fe52	999f5691-c5dc-4824-8b8a-abd7d19e8ff2	barat	BLACK ANTIQUE SHERWANI SAME AS IT IS WITH SUIT SHOES AND TURBAN	2025-11-29 11:01:24.306799+00	2025-11-29 11:01:24.306799+00
1d96db9a-aa41-409b-ac16-23100a53a60a	999f5691-c5dc-4824-8b8a-abd7d19e8ff2	wallima	WHITE NEW SAMPLE SAME AS IT IS WITH PLATED SHIRT AND BLACK PENT WITH BOW AND POCKET SQ 	2025-11-29 11:01:24.306799+00	2025-11-29 11:01:24.306799+00
6592fff7-74ce-40f4-a539-1886c9a22044	7b5c58db-90b4-4a99-8bb6-60e04574f9de	nikkah	Nikkah 5TH SEP\t\t\nZAIN DSN OPEN PRINCE COAT\t\t\nWITH SUIT\t\t\nON ZD CLR\t\t\nNO SHOES\t\t\nPKR-/ 110000\t\t	2025-11-17 20:58:36.868474+00	2025-11-17 20:58:36.868474+00
f0bb6c71-8822-43a4-a782-6626a11b8b71	7b5c58db-90b4-4a99-8bb6-60e04574f9de	mehndi	NEW POWDER PINK OPEN JACKET \t\t\t\nWITH EMB SUIT AND SHOES\t\t\t\nCLR SHERAWALA \t\t\t\n\t\t\t\nPKR-/ 130000\t\t\t	2025-11-17 20:58:36.868474+00	2025-11-17 20:58:36.868474+00
35968564-b095-4c6d-a7ce-f7b32b228daf	7b5c58db-90b4-4a99-8bb6-60e04574f9de	barat	ROSE GOLD SHERWANI \t\t\nWITH PLAIN BACK\t\t\nWITH SUIT, SHOES AND TURBAN\t\t\nTURBAN PENDING\t\t\n\t\t\nPKR-/ 250000\t\t	2025-11-17 20:58:36.868474+00	2025-11-17 20:58:36.868474+00
af6ee988-0678-4243-8759-9e48a1c1126c	7b5c58db-90b4-4a99-8bb6-60e04574f9de	wallima	OFF WHITE NEW STONE MOTIF DSN \t\t\t\n3PC \t\t\t\nWITH PLEATED SHIRT AND BOW\t\t\t\nCOAT LAPEL AMERICAN \t\t\t\nU DSN DOUBLE BREAST WAIST COAT\t\t\t\nPKR-/ 150000\t\t\t\n\t\t\t\nTOTAL AMOUNT # 640,000\t\t\t\nDISCOUNT # 210,000\t\t\t\nNET AMOUNT # 430,000\t\t\t	2025-11-17 20:58:36.868474+00	2025-11-17 20:58:36.868474+00
d0f1cba6-b888-4544-a378-5cf8de07a6d8	43f8792f-1a4c-4cf4-b507-d08e96ce4171	barat	ANTIQUE DSN SHERWANI\t\t\nWITH SUIT, SHOES\t\t\n& PAGRI TURBAN\t\t\n\t\t	2025-11-18 12:10:25.634294+00	2025-11-18 12:10:25.634294+00
30d41b82-8c27-4623-9b82-5750fbb8cdbd	bf210973-19fa-49da-ae13-910cec709f76	other	2 PANT COATS\n	2025-11-14 13:03:45.206031+00	2025-11-14 13:03:45.206031+00
838a8301-ce87-411d-8677-582caccf5794	c6ced0b2-38cb-4955-959b-7411e32409b2	other	BLACK & GREY BAN WAISTCOAT WITH COLLAR CUFF SHALWAR QAMEEZ\nGREEN & BLUE BAN WAISTCOAT CHAMPA WITH BAN CUFF SHALWAR QAMEEZ\nQAMEEZ AND WAISTCOAT GHERA SEEDHA	2025-11-17 20:59:57.980074+00	2025-11-17 20:59:57.980074+00
22b8ecec-fdfb-45e0-ae1a-e379c9c08d2e	89436762-bc61-402f-817b-dd8291efb0d5	other	SHABALA SAME AS GROOM\t\t\nWITHOUT SHOES\t\t	2025-11-17 20:39:40.466707+00	2025-11-17 20:39:40.466707+00
8f459df6-56f9-437b-9560-4f73c986c331	89436762-bc61-402f-817b-dd8291efb0d5	mehndi	NEW SUKHA MEHNDI OPEN PRINCE COAT  \t\t\t\nWITH EMB SUIT AND COLOR SAME\t\t\t\nAS MUSTARD SWATCH SHADE\t\t\t\nWITH SHOES\t\t\t\n\t\t\t	2025-11-17 20:39:40.466707+00	2025-11-17 20:39:40.466707+00
5e364f1f-707f-4acf-aeb4-b3193f663ca3	89436762-bc61-402f-817b-dd8291efb0d5	wallima	LOT 038 LOT NO B CLR 4\t\t\t\nNEW NAVY BLUE DSN \t\t\t\nON ZINC COLOR \t\t\t\nWITH PLEATED SHIRT AND SEQ BOW\t\t\t\n\t\t\t\n100,000/PKR\t\t\t	2025-11-17 20:39:40.466707+00	2025-11-17 20:39:40.466707+00
1e34589a-0437-4e0b-aa5e-f0f3f12b3a33	53f6b83c-776f-401a-9f87-8c87ce26a4f9	mehndi	NEW SIGNATURE BLUE\t\t\t\nCOLOR NEW GREEN OPEN JACKET\t\t\t\nBAN OPEN PRINCE COAT \t\t\t\nSUIT AND SHOES\t\t\t\n\t\t\t	2025-11-17 21:00:33.867475+00	2025-11-17 21:00:33.867475+00
c38bd18f-5405-4a9d-94e9-414cb0302332	53f6b83c-776f-401a-9f87-8c87ce26a4f9	barat	NEW SIGNARURE ZC SHERWANI \t\t\nALI RAZA ON BLACK ON BLACK\t\t\nBACK AS FRONT SAME \t\t\nWITH SUIT SHOES\t\t\nTURBAN \t\t	2025-11-17 21:00:33.867475+00	2025-11-17 21:00:33.867475+00
458d1655-64f8-4a3a-b928-2fcd813d940e	53f6b83c-776f-401a-9f87-8c87ce26a4f9	wallima	ITALIAN OFF WHITE \t\t\t\nNEW SIGNATURE ALI RAZA\t\t\t\nWITH PLEATED SHIRT \t\t\t\nAND BLACK PANT\t\t\t	2025-11-17 21:00:33.867475+00	2025-11-17 21:00:33.867475+00
1844deb1-e1f8-4602-b088-18fbc7508c19	53f6b83c-776f-401a-9f87-8c87ce26a4f9	other	SHABALA\t\t\nSAME AS GROOM, BUT ONLY FRONT\t\t\nNO BACK \t\t\nSUIT AND TURBAN\t\t	2025-11-17 21:00:33.867475+00	2025-11-17 21:00:33.867475+00
a9a2d820-1651-46e7-84a2-aef1b49f3490	41d8104f-2e5b-4f1c-9ebc-6260cf6b65df	barat	WALIMA BROWN COAT DSN\t\t\nON BLACK CLOSE PRINCE COAT\t\t\nEMBELLISHMENT ON BAN \t\t\n& UPPER CHEST AND SHOULDERS\t\t\nWITH PANT	2025-11-17 20:40:15.709624+00	2025-11-17 20:40:15.709624+00
359d08d6-0457-46a1-a1c9-7af69dd78dea	40404163-9ad4-4994-a41f-6317ff41a08c	mehndi	NEW OLIVE GREEN OPEN JACKET \t\t\t\nSAME AS IT IS (CLR PENDING)\t\t\t\nWITH EMB SEQ SUIT AND SHOES\t\t\t\nCLR FROM CLIENT\t\t\t\n\t\t\t	2025-11-17 20:40:37.191147+00	2025-11-17 20:40:37.191147+00
eb82c351-22e1-4431-a0ca-6ca192a802f5	40404163-9ad4-4994-a41f-6317ff41a08c	barat	PEHLWANI POSHAK \t\t\nSAME AS IT IS \t\t\nWITH PLAIN SUIT AND SHOES\t\t\nTURBAN PENDING\t\t	2025-11-17 20:40:37.191147+00	2025-11-17 20:40:37.191147+00
12ddb51c-1540-485b-aee8-8141499acbca	43f8792f-1a4c-4cf4-b507-d08e96ce4171	wallima	 NEW BLUE DSN COAT\t\t\t\nPLEATS SHIRT WITH BOW\t\t\t\n\t\t\t\n\t\t\t	2025-11-18 12:10:25.634294+00	2025-11-18 12:10:25.634294+00
b9056bbf-106f-44fa-9bc8-65e1b06646a8	b573e9bc-d314-4e0a-8e34-216bea63cdfd	other	MANUAL RECORD	2025-11-18 12:35:46.304899+00	2025-11-18 12:35:46.304899+00
8e5e5898-fabd-43cd-b94e-b5536edd41bf	bafe46ef-6777-4b06-af1d-afd270354c0c	barat	ITALIAN FABRIC BLACK CLR\t\t\n3PCS \t\t\nCOAT AMERICAN LAPEL\t\t\nWAISTCOAT DOUBLE BREST U DSN\t\t\nWITH OFFWHITE SHIRT AND TIE\t\t	2025-11-17 21:01:22.381745+00	2025-11-17 21:01:22.381745+00
e40c6546-51a9-468e-b07f-9ca97f2dadcf	bafe46ef-6777-4b06-af1d-afd270354c0c	wallima	ITALIAN FABRIC CHARCOAL GREY\t\t\t\n2PCS \t\t\t\nCOAT NORMAL LAPEL\t\t\t\nWITH OFFWHITE SHIRT AND TIE\t\t\t\nSHIRT HUGO BOSS\t\t\t\n\t\t\t	2025-11-17 21:01:22.381745+00	2025-11-17 21:01:22.381745+00
c2dbceb5-13c2-4941-ba48-7297735fa254	508f9460-e0f4-446f-9c4b-efe4417fa439	other	MANUAL	2025-11-18 12:36:11.857169+00	2025-11-18 12:36:11.857169+00
53462bd1-afe9-41fd-8d7c-eede89f54857	d9f86d8e-3ddf-4504-b12d-2c5b3a43a785	mehndi	MUSTARD DORI DSN\t\t\t\nSAME AS IT IS \t\t\t\nWITH PLAIN SUIT AND SHOES\t\t\t	2025-11-18 12:41:26.179118+00	2025-11-18 12:41:26.179118+00
716e4782-0f94-489b-9e8c-5da7f6cd6c16	d9f86d8e-3ddf-4504-b12d-2c5b3a43a785	barat	TAJDAR SHERWANI \t\t\nSAME AS IT IS \t\t\nWITH PLAIN SUIT AND SHOES\t\t\nTURBAN BLACK HSN\t\t\n\t\t	2025-11-18 12:41:26.179118+00	2025-11-18 12:41:26.179118+00
1cd82b6f-9aaf-4a32-a935-cadc60077793	d9f86d8e-3ddf-4504-b12d-2c5b3a43a785	wallima	SILVER NEW DSN \t\t\t\nON NAVY BLUE CLR \t\t\t\nAMERICAN LAPAL\t\t\t\nPLAIN SHIRT AND TIE \t\t	2025-11-18 12:41:26.179118+00	2025-11-18 12:41:26.179118+00
dd97401f-9358-4287-a25c-449297b57aad	0db71fcf-acc2-43c9-9480-701229ac8318	mehndi	SAME COLOR SAME DESIGN AS IT IS \nFARAZ MANAN\nCUTLINE SAME OR I HAVE OPTION TO CUSTOMISE IT ACCORDING TO BODY \nINNER SUIT PLAIN RA SILK\nAND EMBELLISHED SHOES\nEMBELLISHMENT FRONT BACK SLEEVES	2025-11-19 12:08:51.622213+00	2025-11-19 12:08:51.622213+00
313a25b5-f82a-4191-b15e-6be4033b374f	0db71fcf-acc2-43c9-9480-701229ac8318	barat	BARAT MIDNIGHT BLUE \nSAME AS PICTURE OF HSY \nEMBELLISHMENT FRONT BACK SLEEVES BAN\nTURBAN PLAIN  OPTION WE HAVE FOR SELF FABRIC\nAND EMBELLISHED SHOES	2025-11-19 12:08:51.622213+00	2025-11-19 12:08:51.622213+00
332bdbf3-ad74-4581-92e4-2fffe861159a	0db71fcf-acc2-43c9-9480-701229ac8318	wallima	AYUSHMAN COAT \nWALIMA BLACK COLOT \n2 PIECE \nPLEATED SHIRT AND BOW \n	2025-11-19 12:08:51.622213+00	2025-11-19 12:08:51.622213+00
8911af01-0b20-41d4-8652-1bd9b2770595	e48a13a4-5286-4ab6-9f9b-854cbe6bd931	other	EEMAN PANT COAT\nELAF COAT	2025-11-22 21:03:17.500369+00	2025-11-22 21:03:17.500369+00
ffcbd698-6383-4a65-83ef-590a28af1be5	ba1b87ab-4c34-4966-9549-80784ed0bf00	other	Mayon\t\t\nNEW GREEN DSN WAIST COAT\t\t\nWITH EMB SUIT AND SHOES\t\t\n\t\t	2025-11-22 21:04:02.079398+00	2025-11-22 21:04:02.079398+00
967d5787-f21a-486d-b2d4-c87346efac31	5f5f7d80-b82a-46c2-afe4-c9a7cf6fd31a	nikkah	IBRAHIM\t\t\nDESIGN SAME AS PINK NEW \t\t\nON SKIN Z COLOR \t\t\nWITH EMBROIDED SUIT \t\t\nWITHOUT SHOES \t\t	2025-11-17 21:05:33.095059+00	2025-11-17 21:05:33.095059+00
87042b44-06d1-429d-80f1-44d3d0e6ea56	40404163-9ad4-4994-a41f-6317ff41a08c	wallima	BLACK 2PC\t\t\t\nSAME AS HKC\t\t\t\nWITH PLEATED SHIRT AND BOW\t\t\t\nSILK LAPEL\t\t\t\nEMB 13 INCH\t\t\t	2025-11-17 20:40:37.191147+00	2025-11-17 20:40:37.191147+00
0ec94bee-e6dc-4d44-863a-cf02ace55f05	5f5f7d80-b82a-46c2-afe4-c9a7cf6fd31a	mehndi	PLUM COAT OPEN JACKET \t\t\t\nWITH BLACK INNER SUIT TR\t\t\t\nWITH EMBELLISHED SHOES \t\t\t	2025-11-17 21:05:33.095059+00	2025-11-17 21:05:33.095059+00
3d4ed27f-91da-4def-88dd-0fceda0b19cc	5f5f7d80-b82a-46c2-afe4-c9a7cf6fd31a	other	MAYON\nMUSTARD COLOR DORI\t\t\nDESIGN NEW MUNGIA DORI\t\t\nWITH MUSTARD INNER RA SILK SUIT\t\t\nEMBELLISHED SHOES\t\t	2025-11-17 21:05:33.095059+00	2025-11-17 21:05:33.095059+00
d6b386d0-8cca-4341-8c0c-2b38ec3b42dc	5f5f7d80-b82a-46c2-afe4-c9a7cf6fd31a	wallima	NAVY BLUE IMPORTED TR \t\t\t\nLT 10303 LOT A COLOR 7\t\t\t\nAMERICAN LAPEL \t\t\t\n2 PIECE \t\t\t\nWITH SHIRT AND ICE BLUE TIE\t\t\t	2025-11-17 21:05:33.095059+00	2025-11-17 21:05:33.095059+00
14a9919e-99a6-44c2-8cc1-48a94ab936f7	0205e1e2-f5e2-4f1f-98f7-4049c677a6ab	mehndi	SHERAWALA VELVET\t\t\t\nWITH EMB SAYYAM DSN SUIT \t\t\t\nAND SHOES ON NEW OLIVE GREEN \t\t\t\nWITHOUT GOTA \t\t\t	2025-11-18 11:07:21.207006+00	2025-11-18 11:07:21.207006+00
773db24c-8db9-4d6b-8474-dc87312efadd	0205e1e2-f5e2-4f1f-98f7-4049c677a6ab	barat	BLACK ANTIQUE DSN\t\t\nSAME AS IT IS\t\t\nWITH PLAIN SUIT AND SHOES\t\t\nTURBAN PENDING\t\t	2025-11-18 11:07:21.207006+00	2025-11-18 11:07:21.207006+00
b6170067-b3e3-4a34-81c3-13f33950f27a	0205e1e2-f5e2-4f1f-98f7-4049c677a6ab	wallima	PIC DSN EMBELLISHMENT\t\t\t\nON NAVY BLUE CLR ON INDIAN NAPEL\t\t\t\nWITH PLATED SHIRT BOW \t\t\t\nAND POCKET SQ\t\t\t\nEMBELLISHMENT 30% GREY 70% BLK\t\t\t	2025-11-18 11:07:21.207006+00	2025-11-18 11:07:21.207006+00
39bb60a0-c93e-4a22-9b27-105bef9e7965	997e880d-8c2b-44b3-93f9-5c6c5e5e7f50	mehndi	OPEN PRINCE COAT\t\t\t\nIN SEQ LINE DSN \t\t\t\nIN BLACK CLR \t\t\t\nWITH TR  SUIT \t\t\t\nNO SHOES\t\t\t	2025-11-17 20:41:26.652379+00	2025-11-17 20:41:26.652379+00
eaf8e06c-a037-42fd-bbdf-942f8f3e5bfb	997e880d-8c2b-44b3-93f9-5c6c5e5e7f50	barat	LT 038 LOT B CLR 6\t\t\n2 BUTTON COAT \t\t\nAMERICAN LAPEL \t\t	2025-11-17 20:41:26.652379+00	2025-11-17 20:41:26.652379+00
067e8059-8c45-4b80-a7e9-7bf00813d69b	061121a0-b6d4-4111-af68-5eccf0cbd500	nikkah	MK DSN IN OPEN BAN PRINCE COAT \nWITH OFF WHITE TR SUIT \nCOLOR REF FROM CLIENT	2025-11-29 14:03:44.278923+00	2025-11-29 14:03:44.278923+00
04139708-f5bc-4232-942e-dae675f54953	9752100d-0632-42f3-941c-f4d5b45b7ced	mehndi	NEW BLUE DSN OPEN COAT\t\t\t\nIN BOTTLE GREEN COLOR\t\t\t\nWITH ANTIQUE EMBELLISHMENT\t\t\t\nWITH PLAIN SUIT & SHOES\t\t\t	2025-11-18 12:05:29.237531+00	2025-11-18 12:05:29.237531+00
4a593bea-0e1e-464b-b2b8-af2de798aeb4	6f789bd2-215f-4e5a-8ddd-cac4d2df783a	barat	NEW ZC SHERWANI\t\t\nSAME AS IT IS \t\t\nWITH PLAIN SUIT, SHOES \t\t\nTURBAN PENDING\t\t\n\t\t\n\t\t	2025-11-18 12:18:30.696282+00	2025-11-18 12:18:30.696282+00
37fc61ad-9eeb-4264-bdd8-eb19a06215af	dc1e0ba9-98e1-40a2-b8e0-db64ea3c8604	wallima	BLACK 2PC \nAMERICAN LAPAL\nWITH PLAIN SHIRT AND TIE AND POCKET SQ	2025-11-18 12:37:18.969705+00	2025-11-18 12:37:18.969705+00
d1bccfd5-5cc5-4d07-8b57-eb9c41d38d80	8205d83a-576a-4eb4-b43c-224bfea1cde8	mehndi	SHERANWALA VELVET WITH PLAIN \t\t\t\nSUIT AND SHOES\t\t\t\nCOLOR NEW SUKHA MEHNDI \t\t\t\nWITHOUT VELVET PATCH ON \t\t\t\nOPEN PRINCE COAT\t\t\t\nLOOSE TROUSER ON MEHNDI\t\t\t	2025-11-18 12:53:51.543613+00	2025-11-18 12:53:51.543613+00
8be6773c-1b07-47e1-bf48-ac62e84228fd	8205d83a-576a-4eb4-b43c-224bfea1cde8	barat	OFF WHITE SHERWANI ON ITALIAN FABRIC WITH \t\t\nITALIAN SUIT SHOES AND TURBAN\t\t\nBUTTONS ON TRIAL, TURBAN PENDING\t\t\nSHALWAR QAMEEZ ANTIQUE EMB ON BAN\t\t\nZOHAIB SHERWANI BAN DSN \t\t	2025-11-18 12:53:51.543613+00	2025-11-18 12:53:51.543613+00
f24207ab-f7c2-42dd-9375-e11f6e55c43c	8205d83a-576a-4eb4-b43c-224bfea1cde8	wallima	ITALIAN FABRIC 140S\t\t\t\nNAVY BLUE CLR \t\t\t\nDSN ON ZAIN WHATSAPP \t\t\t\nOFF WHITE SHIRT\t\t\t\nAND TIE \t\t\t	2025-11-18 12:53:51.543613+00	2025-11-18 12:53:51.543613+00
9257a961-15cf-4018-a876-82f24420eb79	d3099450-4f50-45bc-b356-a82d84a78b71	wallima	2PC BLACK IMP TR\nNOIR LUXE DSN \nAMERICAN LAPAL\nEMB ON UPPER CHEST & SLEEVES \nWITH OFF WHITE PLAIN SHIRT \nPANT RELAX FIT PIC ON WHATS APP	2025-11-22 12:13:05.868474+00	2025-11-22 12:13:05.868474+00
8ef0dc01-7e18-406c-9b04-c4fc7ed297e7	ba1b87ab-4c34-4966-9549-80784ed0bf00	mehndi	NEW BLUE OPEN PRINCE COAT \t\t\t\nWITH DIFF PATTERN \t\t\t\nWITH PLAIN SUIT AND SHOES\t\t\t	2025-11-22 21:04:02.079398+00	2025-11-22 21:04:02.079398+00
5c8b60a1-52a0-4e22-beba-5708e5cb7b34	ba1b87ab-4c34-4966-9549-80784ed0bf00	barat	NEW BESPOKE SHERWANI\t\t\nEMB FRONT, SLEEVES AND BAN\t\t\nWITH PLAIN SUIT AND EMB SHOES\t\t\nTURBAN HSN PLAIN\t\n\nEMBROIDERY SHAWL\n2 KIDS TURBAN\t\n\t\t\t\t	2025-11-22 21:04:02.079398+00	2025-11-22 21:04:02.079398+00
8718f184-204e-427e-96c5-f99270e77e9a	ba1b87ab-4c34-4966-9549-80784ed0bf00	wallima	2 PIECE COAT, AMERICAN LAPEL \nPICTURE DESIGN ON WATSAPP\n\t\t\t	2025-11-22 21:04:02.079398+00	2025-11-22 21:04:02.079398+00
ef6cc319-b7e8-40c1-a16b-49b7ab8e995a	c91056db-fdd4-4721-ab3b-026675e5e56b	wallima	HK DSN EMB ON UPPER CHEST AND SELEVES SILK ON INDIAN LAPEL WITH PLEATED SHIRT AND BOW 	2025-11-24 13:31:17.145603+00	2025-11-24 13:31:17.145603+00
5ccfcd05-0657-4b4f-ade7-9743ed18e2cd	9fc7dd4c-ea2b-4a1e-9ce3-c453344b6502	other	MANUAL	2025-11-17 21:07:23.354427+00	2025-11-17 21:07:23.354427+00
964b6555-f7cc-427e-9f6f-aa3e4ef62dae	72974b6f-fc69-49af-b02c-dde30673e0f2	mehndi	SHERANWALA VELVET COLOR \t\t\t\nNEW BOTTLE GREEN F DSN\t\t\t\nWITH SEQ EMB SUIT AND SHOES\t\t\t	2025-11-17 21:07:57.371463+00	2025-11-17 21:07:57.371463+00
4a151d37-21d6-4a5f-a349-d37e253927b3	72974b6f-fc69-49af-b02c-dde30673e0f2	barat	NEW BLACK ANTIQUE\t\t\nSHERWANI WITH BLACK SUIT \t\t\nSHOES AND TURBAN\t\t\n\t\t	2025-11-17 21:07:57.371463+00	2025-11-17 21:07:57.371463+00
b781a420-379d-4531-a083-8a44244df55a	72974b6f-fc69-49af-b02c-dde30673e0f2	wallima	NAVY BLUE 2 PIECE TUXEDO\t\t\t\nEMB DSN WHATSAPP PIC\t\t\t\nWITH PLEATED SHIRT AND BOW\t\t\t	2025-11-17 21:07:57.371463+00	2025-11-17 21:07:57.371463+00
e2984869-b191-436b-b855-480bd75e7b50	38e728dd-b176-444a-9180-976b32b3c318	nikkah	Nikkah 5TH AUG\t\t\nPOWDER PINK DSN ON OPEN JACKET\t\t\nWAISTCOAT OFFWHITE CLR\t\t\nEMB 50% OFFWHITE 50% GOLD\t\t\n EMBROIDERED SUIT OFFWHITE \t\t\nKURTA VERSACE DSN\t\t\nANOTHER MEHNDI SUIT ADDED	2025-11-25 14:12:46.569532+00	2025-11-25 14:12:46.569532+00
a658c2c8-af47-4c53-ba07-1878e6655e19	38e728dd-b176-444a-9180-976b32b3c318	mehndi	NEW WAISTCOAT DSN \t\t\t\nON OPEN JACKET \t\t\t\nWITH SUIT AND SHOES\t\t\t	2025-11-25 14:12:46.569532+00	2025-11-25 14:12:46.569532+00
1d54765b-187e-40f3-b765-19d06600d9e1	38e728dd-b176-444a-9180-976b32b3c318	barat	NEW OFFWHITE SHERWANI \t\t\nON ZD CLR \t\t\nWITH SUIT SHOES AND \t\t\nTURBAN \t\t	2025-11-25 14:12:46.569532+00	2025-11-25 14:12:46.569532+00
010cab5d-b8d7-4949-99eb-69a7ac93709a	38e728dd-b176-444a-9180-976b32b3c318	wallima	BLACK TEXIDO \t\t\t\nHJ DSN EMB ON LEPEL \t\t\t\nPLATED SHIRT AND SQ BOW\t\t\t	2025-11-25 14:12:46.569532+00	2025-11-25 14:12:46.569532+00
24b73a19-2e5e-4901-bc8d-21aa0be8592e	8d0519bf-7dcb-4240-a514-2a05cc8614ab	nikkah	NIKKAH 25 OCT\t\t\nSAYM DESN WAISTCOAT\t\t\nWITH WASH N WEAR SUIT\t\t\nCOLLOR OFF WHITE BOSKI\t\t	2025-11-25 14:13:29.410373+00	2025-11-25 14:13:29.410373+00
a0a9f3d3-2ae1-4c1b-be70-c398742890d3	8d0519bf-7dcb-4240-a514-2a05cc8614ab	mehndi	NEW MEHNDI WAISTCOAT DESIGN \t\t\t\nIN OPEN JACKET WITHOUT BAN \t\t\t\nWITH SUIT AND SHOES \t\t\t\nCOLOR THREAD COLOR PINK\t\t\t\nWITHOUT BORDERS \t	2025-11-25 14:13:29.410373+00	2025-11-25 14:13:29.410373+00
45f832f5-1acf-44b8-8106-c8d75df9f1dc	8d0519bf-7dcb-4240-a514-2a05cc8614ab	barat	NEW ZC DESIGN\t\t\nAS ITS SHERWANI \t\t\nINNER SUIT SHOES \t\t\nCOLOR BASIT SHERWANI\t	2025-11-25 14:13:29.410373+00	2025-11-25 14:13:29.410373+00
f931bec0-cfed-41e4-a77a-8358e12856a8	8d0519bf-7dcb-4240-a514-2a05cc8614ab	wallima	NEW BLUE COAT SILK LAPEL\t\t\t\nBLACK ON BLACK \t\t\t\nWITH TUXEDO SHIRT AND SEQ BOW\t\t\n\t\t\t	2025-11-25 14:13:29.410373+00	2025-11-25 14:13:29.410373+00
20d8da9e-5bf3-40ed-9552-b800633b63ba	38852765-172b-47d0-a056-45916a80cebb	mehndi	NEW SUKHA MEHNDI DSN \t\t\t\nON BOTTLE GREEN CLR WITH\t\t\t\nPLAIN SUIT AND SHOES\t\t\t\n\t\t\t	2025-11-18 12:07:40.33449+00	2025-11-18 12:07:40.33449+00
9fa71d8c-5c7e-4e95-9a31-251670bf18d4	38852765-172b-47d0-a056-45916a80cebb	barat	BLUE SHERWANI DSN \t\t\nON BLACK CLR SAME AS IT IS \t\t\nWITH SUIT SHOES AND TURBAN\t\t\nTURBAN PENDING\t	2025-11-18 12:07:40.33449+00	2025-11-18 12:07:40.33449+00
87474558-131d-463b-af10-51e8ff342f19	38852765-172b-47d0-a056-45916a80cebb	wallima	HK DSN EMB ON RIGHT UPPER SLEEVES\t\t\t\nFRONT AND LEFT DOWN FRONT\t\t\t\nLAPEL SAME AS IT IS\t\t\t\nON NAVY BLUE CLR\t\t\t\n3PCS U DSN DOUBLE BREST W.COAT\t\t\t\nWITH PALTED SHIRT AND SQ BOW\t\t\t	2025-11-18 12:07:40.33449+00	2025-11-18 12:07:40.33449+00
32314a3a-f07c-4fd5-920f-286a0e1dd9af	7f3f22a6-a7d5-443c-84cc-14dc1a8563bd	barat	NEW ZC SHERWANI \t\t\nBLACK ON BLACK\t\t\nWITH PLAIN SUIT & SHOES \t\t\nTURBAN PENDING\t\t	2025-11-18 12:33:25.235491+00	2025-11-18 12:33:25.235491+00
ade73bf5-2ef9-454a-a166-0b078234c48a	77790ff1-a2f1-4e2f-a0ec-446d064b3a2b	wallima	2 PCs PENT COAT\t\t\t\nWITH OFFWHITE TUBO SHIRT\t\t\t\nWITH TIE & POCKET SQUARE\t\t\t\nLT # 038 LOT # B\t\t\t\nCOLOR 3\t\t\t	2025-11-17 20:41:53.951696+00	2025-11-17 20:41:53.951696+00
b7fbf994-90c0-484b-b837-5e68f81cd0cc	0e6b0142-6ff4-4a7f-a816-b45030731631	barat	NEW SKIN EMB SHERWANI \t\t\nSAME AS IT IS \t\t\nWITH PLAIN SUIT \t\t\nSHOES &TURBAN \t\t\nSHOES DSN SAME AS ZINC SHOES\t\t	2025-11-18 12:38:03.06245+00	2025-11-18 12:38:03.06245+00
34c74753-091b-4e09-913a-588b44ef416b	be05b835-4149-4376-9eda-b197cbc31e62	nikkah	Nikkah 15TH NOV\t\t\nSEQ LINE OPEN LONG PRINCE COAT \t\t\nPLAIN BACK\t\t\nWITH INNER SUIT \t\t\nSEROSKI FRONT AND SLEEVES\t\t\nSKIN CLR SWATCH\t\t	2025-11-18 12:38:35.787774+00	2025-11-18 12:38:35.787774+00
0279b6e4-08ff-4b8b-82e9-b3cb9b5e562e	be05b835-4149-4376-9eda-b197cbc31e62	mehndi	NEW F DSN GREEN JACKET\t\t\t\nIN DARK MUSTARD CLR \t\t\t\nWITH PLAIN SUIT AND SHOES\t\t\t	2025-11-18 12:38:35.787774+00	2025-11-18 12:38:35.787774+00
eac426ea-ccc1-4a4d-aa9e-fc8976aa6bc6	2c109569-cf67-49ce-b1eb-8f44c635d1c6	mehndi	ANCHOR BORDER DSN ON \t\t\t\nOPEN WAISTCOAT \t\t\t\nWITH SUIT \t\t\t\nNEW OPEN JACKET COLOR\t\t\t	2025-11-17 21:08:41.030094+00	2025-11-17 21:08:41.030094+00
3bf09bd8-0475-4efd-aa7c-8f355b7aa00e	2c109569-cf67-49ce-b1eb-8f44c635d1c6	barat	BLOCK DSN ON PRINCE COAT\t\t\nCHARCOAL GREY CLR\t\t\nWITH SUIT\t\t\nCOLOR NO 5 LT 10303 LOT A \t\t\nWITH SILVER BUTTONS\t\t	2025-11-17 21:08:41.030094+00	2025-11-17 21:08:41.030094+00
2723cd27-02b5-4bc8-8062-36dfaedb9dfa	2c109569-cf67-49ce-b1eb-8f44c635d1c6	other	ASIF ( UNCLE )\t\t\t\nBLOCK DSN ON PRINCE COAT\t\t\t\nCHARCOAL GREY CLR\t\t\t\nWITH SUIT \t\t\t\nCOLOR NO 5 LT 10303 LOT A\t\t\t\nWITH SILVER BUTTONS\t\t\t	2025-11-17 21:08:41.030094+00	2025-11-17 21:08:41.030094+00
2de6e232-000b-4c15-b6f4-c396271b1c2b	be05b835-4149-4376-9eda-b197cbc31e62	barat	ZIGZAG LINES SHERWANI \t\t\nROSE GOLD CLR \t\t\nWITH SUIT, SHOES AND TURBAN\t\t\nPAGRI DSN\t\t	2025-11-18 12:38:35.787774+00	2025-11-18 12:38:35.787774+00
36b1bf11-0fc1-4d18-8345-c0de8937a91d	be05b835-4149-4376-9eda-b197cbc31e62	wallima	3PC IN NAVY BLUE TR\t\t\t\nWITH PLAIN SHIRT AND TIE\t\t\t\nCOAT AMERICAN LAPAL\t\t\t\nDOUBLE BREASTED WAIST COAT\t\t\t	2025-11-18 12:38:35.787774+00	2025-11-18 12:38:35.787774+00
e4c6caad-0caf-4796-a519-82beba1b2918	69cae7bc-b329-4473-96ba-5ed12531b308	mehndi	OFF WHITE NEW MK DSN \t\t\t\nCOAT CLR (MAROON THREAD)\t\t\t\nWITH RAW SILK PLAIN SUIT SKIN CLR\t\t\t\nRASHID SAAB SHALWAR\t\t\t\n2 SHOES\t\t\t	2025-11-18 12:40:02.518915+00	2025-11-18 12:40:02.518915+00
8bb1cc7e-8fc6-4d05-8c79-fa5b86803c52	69cae7bc-b329-4473-96ba-5ed12531b308	barat	BLACK NEW EMB DSN ON\t\t\nCLOSED PRINCE COAT \t\t\nSEROSKI ON COAT \t\t\nEMB ON BAN\t\t\nWITH 2 PENT\t\t\nZAHID SB SHALWAR QAMEEZ\t\n\t\nRASHID SAAB PANT PENDIND\t\t	2025-11-18 12:40:02.518915+00	2025-11-18 12:40:02.518915+00
077daa24-3c06-4d31-96f3-a4c13022955b	69cae7bc-b329-4473-96ba-5ed12531b308	wallima	SAYYAM DSN SELF NAVY BLUE CLR\t\t\t\nAMERICAN SILK LAPAL COAT\t\t\t\nWITH BLACK PANT\t\t\t\nPLEATED SHIRT WITH BOW\t\t\t\n\t\t\t	2025-11-18 12:40:02.518915+00	2025-11-18 12:40:02.518915+00
49531379-e4ed-4920-a403-8fe8ed50b1f6	1d7f1c09-a73d-4403-beb4-1d56ce3a8f92	mehndi	MUSTARD ANCHOR COLOR\t\t\t\nDSN GREEN NEW OPEN PRINCE COAT\t\t\t\nWITH PLAIN SUIT AND SHOES\t\t\t	2025-11-18 11:58:19.763872+00	2025-11-18 11:58:19.763872+00
42c78d08-94cd-48fb-8f25-d206b121fa37	1d7f1c09-a73d-4403-beb4-1d56ce3a8f92	barat	BLACK ON BLACK NEW SHERWANI \t\t\nWITH PLAIN SUIT AND SHOES\t\t\nTURBAN PENDING\t\t	2025-11-18 11:58:19.763872+00	2025-11-18 11:58:19.763872+00
d3f5ba1a-343e-42d3-ae50-10fe6007d503	00ee4988-2414-4b6a-8801-015896824c95	other	TOTAL ARTCLES 36 MANUAL RECORD	2025-11-18 11:58:50.747524+00	2025-11-18 11:58:50.747524+00
cc2d5a62-f3db-4d72-86e2-535644103374	812c9c74-460b-4d18-912b-083c3aff3862	other	PANT COAT	2025-11-18 11:59:38.031095+00	2025-11-18 11:59:38.031095+00
0e4c0cb4-a622-4299-bd99-7f77ff91479d	bb761892-1714-4007-a293-14e8b6cb38b2	other	MOHID NIKKAH SUIT AND COAT \nDESIGN NEW MUSTARD GREEN BAN PRINCE COAT IN SKIN COLOR	2025-11-18 12:00:24.54519+00	2025-11-18 12:00:24.54519+00
7cf806c6-1c7c-415a-b66d-b21f10d80fcb	69cae7bc-b329-4473-96ba-5ed12531b308	other	ZAHID SAHAB\t\t\nAHMAD\t\t\nMUHAMMAD HASSAN\t\t\n\t\t\n\t\t	2025-11-18 12:40:02.518915+00	2025-11-18 12:40:02.518915+00
578d5210-8f03-4be7-8ed7-5bfd085a59a3	c397149f-9f92-4478-8b7f-28b394753e39	nikkah	Nikkah 5TH DEC\t\t\nZINC EMB WAISTCOAT SAME \t\t\nWITH PLAIN SUIT\t\t	2025-11-18 12:54:25.975976+00	2025-11-18 12:54:25.975976+00
654047d1-9928-4b87-8988-dabdc22e2309	c397149f-9f92-4478-8b7f-28b394753e39	mehndi	BOTTLE GREEN SEQ LINE \t\t\t\nPRINCE COAT WITH SUIT\t\t\t\n\t\t\t	2025-11-18 12:54:25.975976+00	2025-11-18 12:54:25.975976+00
d635eb46-3b13-4a47-9926-b65ec5996c85	c397149f-9f92-4478-8b7f-28b394753e39	barat	BLACK PRINCE COAT IN MAROON CLR \t\t\nPRINCE COAT AND PENT \t\t\nPOCKET MOTIVE BLUE WAIST COAT \t\t\nBAN EMB	2025-11-18 12:54:25.975976+00	2025-11-18 12:54:25.975976+00
9c5fe26a-36c5-4cf7-9011-10b673eca9a8	894b09f5-ec22-4074-b799-5d51cf0dd544	mehndi	SHERWANI WITH INNER SUIT, SHOES \t\t\t\n&TURBAN\t\t\t\nCLR AND DSN REF \t\t\t\nON WHATSAPP\t\t\t\n\t\t\t	2025-11-04 12:47:00.553583+00	2025-11-04 12:47:00.553583+00
942fce78-6d20-4e1d-a283-660006551242	ac4c0655-e060-4847-b4a4-29205da4707f	mehndi	POWDER PINK OSTRICH DSN\t\t\t\nIN OPEN PRINCE COAT RAWSILK\t\t\t\nON ZINC CLR \t\t\t\nSLEEVES SAME AS IT IS\t\t\t\nWITH OFF WHITE TR SUIT\t\t\t\nWITHOUT SHOES\t\t\t	2025-11-18 12:55:09.508424+00	2025-11-18 12:55:09.508424+00
3c6fdbe8-772f-4b13-8ae9-a918a80c62bd	ae5c369b-6388-43f6-8c34-25bf72bd19b5	mehndi	SHERAWALA VELVET WITH PLAIN SUIT & SHOES	2025-11-22 12:22:18.677352+00	2025-11-22 12:22:18.677352+00
5341a94c-f8ff-47b8-9d5d-e1a6233df8db	d501a52e-d215-4d96-afcb-6e808d4c682b	wallima	LT10303 LOT B CLR6 (CHARCOAL GRAY) IMP TR\n3PC COAT LAPAL AMERICAN\nDOUBLE BREASTED WAISTCOAT LAPAL\nWITH PLAIN SHIRT AND TIE	2025-11-05 12:23:53.719883+00	2025-11-05 12:23:53.719883+00
26813cd9-06d1-4041-8777-f2852bc2f730	84ec2eda-cce0-44a3-91eb-2e9e2eb8f72e	barat	PEHLWANI POSHAK IN ZC COLOR SAME AS IT IS\nWITH PLAIN SUIT, SHOES & TURBAN\nTURBAN PLAIN HSN SAME CLR	2025-11-23 10:00:47.444771+00	2025-11-23 10:00:47.444771+00
6a950c60-bfec-460f-afe5-67568dcef92d	6438f658-8373-4f01-b87a-1282963e12be	other	CHARCOAL GREY 3PC\nCOAT LAPAL AMERICAN\nDOUBLE BREASTED WAISTCOAT LAPAL\nWITH OFF WHITE PLAIN SHIRT	2025-11-25 14:26:59.054866+00	2025-11-25 14:26:59.054866+00
db44455c-657d-435b-ac13-86709c5e0d97	15f5c2b5-fd18-4c1a-adad-2bf1cc627fc3	nikkah	OFF WHITE DUBAI SHOOT SAME AS IT IS\nWITH SUIT NO SHOES PLAIN SUIT 	2025-11-17 20:37:11.602463+00	2025-11-17 20:37:11.602463+00
44bd973c-c4c4-4e16-a229-f5efde9fbdf7	15f5c2b5-fd18-4c1a-adad-2bf1cc627fc3	wallima	BLACK ITALIAN FABRIC \nSPIDER DESIGN EMB ON UPPER CHEST\nAND SHOULDER INDIAN LAPEL \nBLACK 70 % AND MULTI 30 %	2025-11-17 20:37:11.602463+00	2025-11-17 20:37:11.602463+00
24c0c2d1-b917-4456-9568-bf4d11816380	85c7ee8e-0856-4e38-8478-9651a4aefcae	mehndi	NEW BLUE PRINCE COAT DSN\t\t\t\nOPEN PRINCE COAT\t\t\t\nWITH PLAIN SUIT, SHOES\t\t\t	2025-11-17 20:37:51.226764+00	2025-11-17 20:37:51.226764+00
904144e7-dc4f-44bd-a890-650c1a07ccc3	167bd157-7439-4112-b0b8-8075f3fd9de8	mehndi	NEW MK DSN ONLY MOTIVE IN SUKHA MEHNDI CLR WITH EMB SUIT AND SHOES	2025-11-18 12:08:32.295037+00	2025-11-18 12:08:32.295037+00
b37cba08-5e30-41d9-9c7b-007c78d97773	167bd157-7439-4112-b0b8-8075f3fd9de8	barat	FABRIC FROM CLIENT OFF WHITE CLR\nONLY STITCHING WITH PLAIN SUIT AND SHOES\nTURBAN OFF WHITE HSN WITH BROTCH & FEATHER 	2025-11-18 12:08:32.295037+00	2025-11-18 12:08:32.295037+00
64a46b85-0fb1-46ec-abfb-d49b8fa44740	167bd157-7439-4112-b0b8-8075f3fd9de8	wallima	2PC MIDNIGHT BLUE CLR\nHJ DSN EMB ON LAPAL \nWITH OFF WHITE PLEATED SHIRT & SEQ BOW\n	2025-11-18 12:08:32.295037+00	2025-11-18 12:08:32.295037+00
d1306a13-4be2-491b-8da0-63cfcdbb122d	49974bee-454f-46c7-8c87-611e82b0eaab	mehndi	KARANDI LINE WAISTCOAT WITH ITALIAN SUIT IN SKIN CLR	2025-11-18 12:34:31.808481+00	2025-11-18 12:34:31.808481+00
fdf09469-d792-4d67-af61-497fa21233ed	49974bee-454f-46c7-8c87-611e82b0eaab	barat	CREAM CLR PRINCE COAT WITH INNER SUIT	2025-11-18 12:34:31.808481+00	2025-11-18 12:34:31.808481+00
ffe111cf-f956-414b-a0f7-19160e63028b	49974bee-454f-46c7-8c87-611e82b0eaab	wallima	NAVY BLUE 2 BUTTON COAT WITH SHALWAR QAMEEZ	2025-11-18 12:34:31.808481+00	2025-11-18 12:34:31.808481+00
15f2306b-11d5-4292-9b00-2bf0f2e515c6	413e4b6e-5fc2-43a1-9013-e2df545f354e	mehndi	NEW MONGIA DSN SAME AS \t\t\t\nIT WITHOUT LAST BORDER\t\t\t\nWITH SUIT, NO SHOES\t\t	2025-11-17 20:42:22.035705+00	2025-11-17 20:42:22.035705+00
52b3a44a-4b0c-4bdb-b7c6-1cc3e5acbe18	e92e8ea5-92ae-4f9d-9356-7eb6d79766b8	other	BLACK TWO BUTTON COAT\nAMERICAN LAPAL\nWITH PANT	2025-11-10 12:12:38.531904+00	2025-11-10 12:12:38.531904+00
c131af9a-74fc-4ff4-b5cb-05e8cb83d388	805c0bf2-b436-48e9-bac4-cfbbfe60b6aa	mehndi	PLUM OPEN JACKET DSN\t\t\t\nWITH BLACK WASH N WEAR SUIT \t\t\t\nAND SHOES \t\t\t\nSAME AS IT IS\t\t\t	2025-11-18 12:39:37.874453+00	2025-11-18 12:39:37.874453+00
649dba64-a3a4-4b96-811f-a2b2d9cd9100	805c0bf2-b436-48e9-bac4-cfbbfe60b6aa	barat	NEW ZC DSN SAME AS IT IS \t\t\nWITH SUIT SHOES \t\t\nTURBAN PENDING\t\t\n\t\t	2025-11-18 12:39:37.874453+00	2025-11-18 12:39:37.874453+00
5df9b004-e476-47f6-b91b-41a9fb2e4622	805c0bf2-b436-48e9-bac4-cfbbfe60b6aa	wallima	BLACK ITALIAN \t\t\t\nGREY NEW DSN (CIRCLE MOTIFS)\t\t\t\nWITH PLEATED SHIRT AND BOW\t\t\t\n\t\t\t	2025-11-18 12:39:37.874453+00	2025-11-18 12:39:37.874453+00
5f8d389c-b9e0-4a23-9351-f03ff9e5da5d	9cc26631-0953-4ac2-9555-9d63b33fb987	other	MOHID COAT 23000\n4 SUIT STITCHING\n2 SUITS FABRIC 17200\nHAMZA VICKY INAM UNCLE\n4 COATS\n1 SUIT \n3 SUITS FABRIC	2025-11-18 13:08:18.191796+00	2025-11-18 13:08:18.191796+00
d781dd0c-f1ee-4d9f-8d14-54c87392729a	f8d8e863-72a1-4e0d-9625-8d2e4e715548	other	BILAL\t\t\nUMER\t\t\nAZAM\t\t\nFAROOQ\t\t\nZIA UR REHMAN\t\t	2025-11-18 13:09:00.543236+00	2025-11-18 13:09:00.543236+00
71c9c9fe-eba9-450b-99b8-a006dce0a7b9	f8d8e863-72a1-4e0d-9625-8d2e4e715548	mehndi	OPEN WAIST COAT\t\t\t\nEMB FRONT AND BAN\t\t\t\nCLR FROM CLIENT\t\t\t\nWITHOUT SUIT\t\t	2025-11-18 13:09:00.543236+00	2025-11-18 13:09:00.543236+00
9db3c476-dafa-4797-975e-452413626106	f8d8e863-72a1-4e0d-9625-8d2e4e715548	barat	BLACK SHERWANI\t\t\nON TR FABRIC \t\t\nEMB CHEST, SLEEVES AND BAN\t\t\nWITH PANT\t\t	2025-11-18 13:09:00.543236+00	2025-11-18 13:09:00.543236+00
166d4b8a-8291-48a1-98d6-fc2a0963d6dd	413e4b6e-5fc2-43a1-9013-e2df545f354e	wallima	NEW BROWN ARE 2 PIECE\t\t\t\nWITH SHIRT, TIE & POCKET SQUARE\t\t\t\nWITH EXTRA BLACK PANT\t\t\t\n\t\t\t	2025-11-17 20:42:22.035705+00	2025-11-17 20:42:22.035705+00
92cda9b6-7b35-4040-8693-8328d7f2aa33	f357a7c4-919d-47d4-a046-abd7411bef1d	other	ENGAGEMENT\t\t\t\nBLACK JET ITALIAN\t\t\t\nAMERICAN LAPAL\t\t\t\nLAPAL SILK\t\t\t\nEMB ON SLEEVES AND BACK\t\t\t\nVIDEO REF\t\t\t\nPLEATED SHIRT REF PIC\t\t\t\n\t\t\t\nEMB DSN \t\t\t\nNEW NAVY BLUE DSN \t\t\t\nALL IN ZERO SIZE\t\t\t	2025-11-17 20:42:42.06537+00	2025-11-17 20:42:42.06537+00
ee235cfc-366b-4a3d-a260-f44873f27607	f8d8e863-72a1-4e0d-9625-8d2e4e715548	wallima	WHITE COAT \t\t\t\nAMERICAN LAPAL\t\t\t\nWITH BLACK PANT \t	2025-11-18 13:09:00.543236+00	2025-11-18 13:09:00.543236+00
1df08b4a-b424-4682-b34a-d92797930b98	43ccc8ef-a034-46f5-ba89-7cc35f4fda0f	mehndi	OLIVE GREEN FLOWER DSN \t\t\t\nNO FLOWER ON ARMS\t\t\t\nFRONT FLOWER WITH THE SAME \t\t\t\nFRONT EMBLISHMENT\t\t\t\nWITH PLAIN SUIT AND SHOES\t\t\t	2025-11-17 20:43:18.047669+00	2025-11-17 20:43:18.047669+00
495e5f73-884d-4ad7-aba0-8e66e21e8332	43ccc8ef-a034-46f5-ba89-7cc35f4fda0f	barat	TAJDAR SHERWANI WITHOUT \t\t\nFLORALS REF DSN AHSAN TARIQ\t\t\nWITH SUIT SHOES AND TURBAN \t\t\nTURBAN AND SHOES PENDING\t\t	2025-11-17 20:43:18.047669+00	2025-11-17 20:43:18.047669+00
2ae02878-8cc0-448a-bad8-179f18972c92	c84447b4-d0ea-44e6-a182-934c700e0dbe	other	UNCLE ATIF COAT \nAHMED COAT\n2 SUITS FABRIC \nNAVY BLUE \n\nMOHID SET NIKKAH\n	2025-11-17 20:56:04.122416+00	2025-11-17 20:56:04.122416+00
5daf70fc-1f30-4b52-a687-7051185f76b8	50e84559-282c-4165-a575-c30fd1917962	mehndi	NEW WAISTCOAT DSN ON OPEN \t\t\t\nJACKET WITH EMB SUIT AND SHOES\t\t\t\nEMB DSN SAMPLE\t\t\t\n\t\t\t	2025-11-22 20:58:39.115652+00	2025-11-22 20:58:39.115652+00
687198ba-3973-45a0-a339-950401afeaf7	50e84559-282c-4165-a575-c30fd1917962	barat	OFFWHITE SHERWANI SAME \t\t\nWITHOUT LAST BORDER \t\t\nWITH SHOES SUIT AND TURBAN \t\t\nTURBAN PENDING\t	2025-11-22 20:58:39.115652+00	2025-11-22 20:58:39.115652+00
a428c3ef-b32f-463d-912f-0ff41ba260cc	ac05b210-81a0-4aaa-b947-504fd48c0754	mehndi	SHERAWALA VELVET \t\t\t\nSAME AS IT IS \t\t\t\nWITH EMB SUIT AND SHOES\t\t\t\n\t\t\t\n(SHOULDER PICTURE ON WHATSAPP)\t\t\t\n\t\t\t	2025-11-25 14:11:04.544709+00	2025-11-25 14:11:04.544709+00
11f6c32a-0a10-4bf2-81e5-811088a827f6	08bffa47-9ea5-44ee-8ea1-4cc71500503b	mehndi	SHERAWALA VELVET SAME\t\t\t\nWITH EMB SUIT AND SHOES\t\t\t\nCOAT (USE DABKA)\t\t\t\n\t\t\t\nRS 160,000/-\t\t\t	2025-11-25 20:13:50.501171+00	2025-11-25 20:13:50.501171+00
f2e09e40-68db-47a6-a53f-8737fda8d210	08bffa47-9ea5-44ee-8ea1-4cc71500503b	barat	OFF-WHITE  ANCHOR SHERWANI\t\t\nWITH PLAIN SUIT AND SHOES\t\t\n\t\t\nRS 180000/-\t\t\n\t\t	2025-11-25 20:13:50.501171+00	2025-11-25 20:13:50.501171+00
132792ff-b457-4822-9d58-9cb81eb99069	46e94509-ad3d-4d09-b3a0-85c2cd5b9bc5	wallima	LT038 LOTB CLR4\nVELVET ZINC COAT\nWITH BLACK PANT\nBLACK PLEATED SHIRT & BOW\n(SHIRT AND COAT DSN ON WHATS APP )	2025-11-29 09:24:00.709762+00	2025-11-29 09:24:00.709762+00
3cf46f6a-3b5c-447d-981c-2aad71093705	85c7ee8e-0856-4e38-8478-9651a4aefcae	barat	NEW BLACK ANTIQUE SHERWANI\t\t\nWITH PLAIN SUIT, SHOES & TURBAN\t\t\nTURBAN PENDING\t\t	2025-11-17 20:37:51.226764+00	2025-11-17 20:37:51.226764+00
ee1a3f05-4463-4da0-b038-5d1c7095ad03	85c7ee8e-0856-4e38-8478-9651a4aefcae	wallima	BROWN SAMPLE COAT CLR \t\t\n3PC \t\t\n	2025-11-17 20:37:51.226764+00	2025-11-17 20:37:51.226764+00
761c6e77-768c-4268-a3c1-df3c2119c9bf	85c7ee8e-0856-4e38-8478-9651a4aefcae	other	ALL COMPLETE ORDER OF FAMILY \nRASHID SB \nHARIS \nTABARAK \nTOTAL PIECES 15	2025-11-17 20:37:51.226764+00	2025-11-17 20:37:51.226764+00
de61865e-4d19-4f9a-a1c7-19d4dc1fdfce	54b6e9e7-4e95-463f-992b-f334691b7a2a	other	MOBEEN ALL ORDER MANUAL	2025-11-17 21:17:32.102077+00	2025-11-17 21:17:32.102077+00
d3944c2c-a87d-44f3-af07-a4991cb3237c	54b6e9e7-4e95-463f-992b-f334691b7a2a	mehndi	HAMZA KHALIL MANUAL ONE PANT COAT WITH SHIRT	2025-11-17 21:17:32.102077+00	2025-11-17 21:17:32.102077+00
f582fdb7-ad80-4281-8077-29e941432dfa	54b6e9e7-4e95-463f-992b-f334691b7a2a	wallima	ASIM MEHMOOD	2025-11-17 21:17:32.102077+00	2025-11-17 21:17:32.102077+00
25a6ab17-df96-49df-ad87-f8021f1b043a	9307894a-b229-4bf1-8963-54bd58d547d2	mehndi	SHERAWALA VLEVET\t\t\t\nIN OLIVE GREEN COLOR WITH\t\t\t\nPLAIN SUIT AND SHOES\t\t\t\n\t\t\t	2025-11-18 12:01:58.72129+00	2025-11-18 12:01:58.72129+00
0186c902-5c64-446e-ad57-e0a2dd554876	9307894a-b229-4bf1-8963-54bd58d547d2	barat	BARAT ANTIQUE SHERWANI\t\t\nSAME AS IT IS WITH\t\t\nSUIT SHOES AND TURBAN \t\t\nTURBAN PENDING \t\t	2025-11-18 12:01:58.72129+00	2025-11-18 12:01:58.72129+00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."users" ("id", "email", "name", "role", "created_at", "updated_at") FROM stdin;
755c0f15-990a-4e0d-9a1d-03d5de1be7ed	ahsantariq.ar@gmail.com	Ahsan Tariq	admin	2025-09-25 01:41:16.891303+00	2025-09-25 01:44:25.331577+00
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."payments" ("id", "order_id", "customer_id", "amount", "payment_method", "payment_date", "transaction_reference", "notes", "created_at", "updated_at", "recorded_by") FROM stdin;
7e9b52d9-511d-4b6a-b184-a2ce9b28b17f	08bffa47-9ea5-44ee-8ea1-4cc71500503b	fa078972-be35-4a96-98a1-398f05f13276	100000.00	other	2025-11-25	\N	\N	2025-11-25 14:14:50.160985+00	2025-11-25 14:14:50.160985+00	\N
d6cdfa99-c683-4213-a19a-eb79d6c3e5d0	08bffa47-9ea5-44ee-8ea1-4cc71500503b	fa078972-be35-4a96-98a1-398f05f13276	90000.00	other	2025-11-25	\N	\N	2025-11-25 20:14:09.141438+00	2025-11-25 20:14:09.141438+00	\N
8c7d4073-4dd8-4e9c-942f-e2e96fcedd0c	c84447b4-d0ea-44e6-a182-934c700e0dbe	a49ce56f-9b98-411e-9896-68dbbb20f202	125000.00	other	2025-11-19	\N	\N	2025-11-19 21:13:40.7665+00	2025-11-19 21:13:40.7665+00	\N
90cf1a05-ea94-47b4-a2a4-3dbbf32afc7d	00ee4988-2414-4b6a-8801-015896824c95	7c51e230-0a0d-4067-a8d7-25517da16653	200000.00	other	2025-11-19	\N	\N	2025-11-19 21:14:06.342982+00	2025-11-19 21:14:06.342982+00	\N
3294b518-0c17-4249-8212-edcfa26bb2a7	b573e9bc-d314-4e0a-8e34-216bea63cdfd	3c346072-215d-4db3-8e5f-43edd6f378c9	75000.00	other	2025-11-20	\N	\N	2025-11-20 10:38:15.172139+00	2025-11-20 10:38:15.172139+00	\N
a5a0aa53-bd36-4836-b863-649456bc2fa4	50e84559-282c-4165-a575-c30fd1917962	d4cb76cd-9a34-484b-be96-4dce61fbdd5d	80000.00	other	2025-11-22	\N	\N	2025-11-22 20:58:59.327144+00	2025-11-22 20:58:59.327144+00	\N
24ee8c62-5a5c-48c1-8a85-887339a2c0c6	38e728dd-b176-444a-9180-976b32b3c318	1dddfc2f-d913-4909-bf79-f49ee20e3101	50000.00	other	2025-11-22	\N	\N	2025-11-22 21:02:32.213254+00	2025-11-22 21:02:32.213254+00	\N
5480113a-d8d0-4b1f-80d8-9bbaafa0a7b5	ac05b210-81a0-4aaa-b947-504fd48c0754	53f8721f-2809-4827-9ede-a40cfb97d7a5	32000.00	other	2025-11-25	\N	\N	2025-11-25 14:10:30.660151+00	2025-11-25 14:10:30.660151+00	\N
286aebc4-949e-470a-8efe-92ace6415591	38e728dd-b176-444a-9180-976b32b3c318	1dddfc2f-d913-4909-bf79-f49ee20e3101	32000.00	other	2025-11-25	\N	\N	2025-11-25 14:12:25.428931+00	2025-11-25 14:12:25.428931+00	\N
0a91c45e-6545-41a1-9af9-239f8d95a080	8d0519bf-7dcb-4240-a514-2a05cc8614ab	7588c28b-2933-4223-91ea-91ef6c07da06	100000.00	other	2025-11-25	\N	\N	2025-11-25 14:13:49.352692+00	2025-11-25 14:13:49.352692+00	\N
\.


--
-- Data for Name: vendor_ledger; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."vendor_ledger" ("id", "vendor_id", "general_ledger_id", "entry_date", "particulars", "debit", "credit", "balance", "notes", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "level") FROM stdin;
\.


--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."prefixes" ("bucket_id", "name", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 312, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict VBe3Kvqu095Cq0bQJoIfQq60DmzyigQSeg3uKfe1Nrjo5ZnCdZgqE8xkTboDpEB

RESET ALL;
