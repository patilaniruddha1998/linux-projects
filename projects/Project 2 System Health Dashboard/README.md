
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