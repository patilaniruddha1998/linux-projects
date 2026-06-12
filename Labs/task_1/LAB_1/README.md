Lab 1: Log Analysis During a Microservice Outage

Title: The Fast-Food API Outage
Difficulty Level: Beginner → Intermediate
Objective: Master grep, awk, sed, and tar to extract critical error data from large log files and package it for the development team.



Environment Setup Commands:

mkdir -p ~/labs/log-analysis && cd ~/labs/log-analysis
cat << 'EOF' > pizza-order-service.log
[2026-05-23 10:00:01] INFO  System started.
[2026-05-23 10:05:22] ERROR Payment gateway timeout. OrderID: 10293
[2026-05-23 10:06:00] INFO  User login successful.
[2026-05-23 10:15:10] ERROR Payment gateway timeout. OrderID: 10294
[2026-05-23 10:20:05] WARN  High memory usage detected.
[2026-05-23 10:25:30] ERROR Database connection lost.
[2026-05-23 10:30:00] ERROR Payment gateway timeout. OrderID: 10295
EOF

Tasks to Perform:

1. Find all lines containing "ERROR" and redirect them to a new file called errors_only.log.


2. The developers only need the Order IDs that failed. Use awk to extract just the OrderID numbers from errors_only.log and save them to failed_orders.txt.


3. Use sed to replace the word "timeout" with "TIMEOUT_FAILURE" in the original pizza-order-service.log (in-place edit).


4. Create a compressed archive (.tar.gz) of all .log and .txt files in the directory to send to the dev team.





ANSWER KEY:

1. grep -i error pizza-order-service.log > errors_only.log

2. awk -F 'OrderID: ' '/ERROR/ {print $2}' errors_only.log > failed_orders.txt

-F 'OrderID: ' : This option tells awk to use "OrderID: " as the field separator. It splits each line into fields based on this string.
/ERROR/ : This pattern matches lines that contain the word "ERROR". Only those lines will be processed.
{print $2} : This action tells awk to print the second field (the part after    "OrderID: ") for each line that matches the pattern. This will give us just the OrderID numbers.

3. sed -i 's/timeout/TIMEOUT_FAILURE/g' pizza-order-service.log

4. tar -czvf log_analysis_results.tar.gz *.log *.txt