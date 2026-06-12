Project 1: The Automated Log Rotator
Objective: Write a bash script that mimics the behavior of logrotate.
Requirements:

Create a script rotate.sh.

The script should look in a directory ~/app-logs/.

Find any .log file larger than 1MB.

Compress that file into a .tar.gz and append the current date to the archive name (e.g., app-2026-05-23.tar.gz).

Empty the original .log file (do not delete it, just clear the contents so the application doesn't crash).

Add this script to crontab to run every night at midnight.



----------------------------------------------------------------------------------------


Project 2: System Health Dashboard
Objective: Create a command-line dashboard for quick server health checks.
Requirements:
Write a bash script health_check.sh that outputs the following in a neatly formatted way:

Current Date and Time

System Uptime

Available RAM (in MB/GB)

Disk space available on the / partition.

The Top 3 processes consuming the most CPU.
(Pro-tip: Use echo with formatting, and pipe commands like free, df, and ps into awk to format the output nicely).