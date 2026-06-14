!# /bin/bash


LOG_FILE="/home/<username>/log_watcher.log"
THRESHOLD=5


if grep -c "Failed password" $LOG_FILE > $THRESHOLD; then
    echo "ALERT: More than $THRESHOLD failed login attempts detected in $LOG_FILE at $(date)" >> /home/<username>/security_alerts.log
fi

TOP_IP=$(grep "Failed password" $LOG_FILE | awk '{print $NF}' | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}')

echo "Most frequent failed login IP: $TOP_IP"