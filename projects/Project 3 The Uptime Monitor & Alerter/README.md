Project 3: The Uptime Monitor & Alerter
Objective: Write a bash script that acts like a rudimentary Datadog/Pingdom.
Requirements:

Create a file called urls.txt containing three URLs (e.g., https://google.com, https://github.com, http://localhost:9999 - this last one is intentionally broken).

Write a script monitor.sh that reads urls.txt line by line.

Use curl to fetch the HTTP status code of each URL.

If the code is 200 or 301, echo "[OK] URL is up".

If the command fails or returns a 404/500, echo "[ERROR] URL is down!" and append the failure to an outage.log file with a timestamp.

Make the script output look professional and clean.
