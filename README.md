# Supabase Database Backup with GitHub Actions

This repository provides a seamless way to automate backups of your Supabase database using GitHub Actions. It creates daily backups of your database’s roles, schema, and data, and stores them in your repository. It also includes a mechanism to easily restore your database in case something goes wrong.

---

## Features

- **Automatic Daily Backups:** Scheduled backups run every day at midnight.
- **Role, Schema, and Data Separation:** Creates modular backup files for roles, schema, and data.
- **Flexible Workflow Control:** Enable or disable backups with a simple environment variable.
- **GitHub Action Integration:** Leverages free and reliable GitHub Actions for automation.
- **Easy Database Restoration:** Clear steps to restore your database from backups.

---

## Getting Started

### 1. **Setup Repository Variables**

Go to your repository settings and navigate to **Actions > Variables**. Add the following:

- **Secrets:**

  - `SUPABASE_DB_URL`: Your Supabase PostgreSQL connection string. Format:  
    `postgresql://<USER>:<PASSWORD>@<HOST>:5432/postgres`

- **Variables:**
  - `BACKUP_ENABLED`: Set to `true` to enable backups or `false` to disable them.

---

### 2. **How the Workflow Works**

The GitHub Actions workflow is triggered on:

- Pushes or pull requests to the `main` or `dev` branches.
- Manual dispatch via the GitHub interface.
- A daily schedule at midnight.

The workflow performs the following steps:

1. Checks if backups are enabled using the `BACKUP_ENABLED` variable.
2. Runs the Supabase CLI to create three backup files:
   - `roles.sql`: Contains roles and permissions.
   - `schema.sql`: Contains the database structure.
   - `data.sql`: Contains table data.
3. Commits the backups to the repository using an auto-commit action.

---

### 3. **Restoring Your Database**

To restore your database:

1. Install the [Supabase CLI](https://supabase.com/docs/guides/cli).
2. Open a terminal and navigate to the folder containing your backup files.
3. Run the following commands in order:

```bash
supabase db execute --db-url "<SUPABASE_DB_URL>" -f roles.sql
supabase db execute --db-url "<SUPABASE_DB_URL>" -f schema.sql
supabase db execute --db-url "<SUPABASE_DB_URL>" -f data.sql
```

This restores roles, schema, and data, bringing your database back to its backed-up state.
Workflow Toggle

Use the BACKUP_ENABLED variable to control whether backups are executed:

    Set to true to enable backups.
    Set to false to skip backups without editing the workflow file.

## Requirements

    A Supabase project with a PostgreSQL database.
    Supabase CLI installed for manual restoration.
    A GitHub repository with Actions enabled.

## Contributing

Contributions are welcome! If you have improvements or fixes, feel free to submit a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for details.