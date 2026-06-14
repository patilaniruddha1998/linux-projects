Project 1: The Automated Log Rotator
Objective: Write a bash script that mimics the behavior of logrotate.
Requirements:

Create a script rotate.sh.

The script should look in a directory ~/app-logs/.

Find any .log file larger than 1MB.

Compress that file into a .tar.gz and append the current date to the archive name (e.g., app-2026-05-23.tar.gz).

Empty the original .log file (do not delete it, just clear the contents so the application doesn't crash).

Add this script to crontab to run every night at midnight.


