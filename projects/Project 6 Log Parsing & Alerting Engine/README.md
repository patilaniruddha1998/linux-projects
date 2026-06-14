Project 6: Log Parsing & Alerting Engine
Objective: Combine cron, awk, grep, and basic logic to create an alerting mechanism.
Requirements:

Write a script log_watcher.sh that scans /var/log/auth.log (or a dummy log file if you prefer).

The script should count how many times the phrase "Failed password" appears.

If the count is greater than 5, the script should output: CRITICAL: Brute force attack detected! [Count: X].

If the count is 5 or less, it outputs: OK: Login failures within threshold.

Advanced addition: Have the script extract the IP addresses of the failed logins and sort them to find the top offending IP.