Project 5: The Automated Remote Sync (rsync)
Objective: Write a robust backup script that synchronizes data and handles network failures gracefully.
Requirements:

Create a local directory ~/critical_data/ and add some dummy files.

Create a backup directory ~/backup_vault/.

Write a bash script sync_vault.sh using the rsync command.

The script must sync data from critical_data to backup_vault.

It must ONLY copy new or modified files (incremental backup).

It must DELETE files in backup_vault if they were deleted from critical_data (exact mirror).

It must output a summary of what was copied to a log file /tmp/sync_run.log.