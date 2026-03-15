#!/bin/bash
# ─── Configuration ───────────────────────────────────
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
LOG_FILE=~/monitor-project/logs/monitor.log
CPU_LIMIT=80
RAM_LIMIT=80
DISK_LIMIT=85
SNS_ARN="arn:aws:sns:us-east-1:195216431976:server-alerts"

# ─── Collect metrics ─────────────────────────────────
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2+$4}' | cut -d'.' -f1)
RAM_USED=$(free -m | awk '/Mem:/ {print $3}')
RAM_TOTAL=$(free -m | awk '/Mem:/ {print $2}')
RAM_PCT=$(echo "scale=0; $RAM_USED * 100 / $RAM_TOTAL" | bc)
DISK_PCT=$(df / | awk 'NR==2 {print $5}' | cut -d'%' -f1)

# ─── Log results ─────────────────────────────────────
echo "[$TIMESTAMP] CPU:${CPU_USAGE}%  RAM:${RAM_PCT}%  Disk:${DISK_PCT}%" | tee -a "$LOG_FILE"

# ─── Alerts ──────────────────────────────────────────
if [ "$CPU_USAGE" -gt "$CPU_LIMIT" ]; then
    MSG="ALERT on EC2: CPU is ${CPU_USAGE}% - above ${CPU_LIMIT}%"
    echo "[$TIMESTAMP] $MSG" | tee -a "$LOG_FILE"
    aws sns publish --topic-arn "$SNS_ARN" --subject "Server Alert: High CPU" --message "$MSG" --region us-east-1
fi

if [ "$RAM_PCT" -gt "$RAM_LIMIT" ]; then
    MSG="ALERT on EC2: RAM is ${RAM_PCT}% - above ${RAM_LIMIT}%"
    echo "[$TIMESTAMP] $MSG" | tee -a "$LOG_FILE"
    aws sns publish --topic-arn "$SNS_ARN" --subject "Server Alert: High RAM" --message "$MSG" --region us-east-1
fi

if [ "$DISK_PCT" -gt "$DISK_LIMIT" ]; then
    MSG="ALERT on EC2: Disk is ${DISK_PCT}% - above ${DISK_LIMIT}%"
    echo "[$TIMESTAMP] $MSG" | tee -a "$LOG_FILE"
    aws sns publish --topic-arn "$SNS_ARN" --subject "Server Alert: High Disk" --message "$MSG" --region us-east-1
fi

echo "[$TIMESTAMP] Check complete." | tee -a "$LOG_FILE"