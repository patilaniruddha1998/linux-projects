Project 3: The Uptime Monitor & Alerter
Objective: Write a bash script that acts like a rudimentary Datadog/Pingdom.
Requirements:

Create a file called urls.txt containing three URLs (e.g., https://google.com, https://github.com, http://localhost:9999 - this last one is intentionally broken).

Write a script monitor.sh that reads urls.txt line by line.

Use curl to fetch the HTTP status code of each URL.

If the code is 200 or 301, echo "[OK] URL is up".

If the command fails or returns a 404/500, echo "[ERROR] URL is down!" and append the failure to an outage.log file with a timestamp.

Make the script output look professional and clean.





Project 4: Automated User Offboarding
Objective: Write a security script that safely deactivates an employee's Linux access when they leave the company.
Requirements:
Write a script offboard.sh that takes a username as an argument (e.g., ./offboard.sh johndoe). The script must:

Check if the user exists. If not, exit gracefully.

Lock the user's password (usermod or passwd).

Expire the user's account so they cannot log in via SSH keys (chage).

Find all files owned by that user on the system and redirect the list of file paths to /var/backups/johndoe_files.txt.

Create a tarball backup of their home directory in /var/backups/.