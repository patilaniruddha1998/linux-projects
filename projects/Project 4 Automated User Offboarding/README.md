Project 4: Automated User Offboarding
Objective: Write a security script that safely deactivates an employee's Linux access when they leave the company.
Requirements:
Write a script offboard.sh that takes a username as an argument (e.g., ./offboard.sh johndoe). The script must:

Check if the user exists. If not, exit gracefully.

Lock the user's password (usermod or passwd).

Expire the user's account so they cannot log in via SSH keys (chage).

Find all files owned by that user on the system and redirect the list of file paths to /var/backups/johndoe_files.txt.

Create a tarball backup of their home directory in /var/backups/.