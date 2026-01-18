#!/bin/bash

# Output file
OUTPUT_FILE="system_health.log"

echo "System Health Check Report" > $OUTPUT_FILE
echo "Date: $(date)" >> $OUTPUT_FILE
echo "------------------------" >> $OUTPUT_FILE

# CPU usage
echo "CPU Usage:" >> $OUTPUT_FILE
top -bn1 | grep "Cpu(s)" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Memory usage
echo "Memory Usage:" >> $OUTPUT_FILE
free -h >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Disk usage
echo "Disk Usage:" >> $OUTPUT_FILE
df -h >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Uptime
echo "System Uptime:" >> $OUTPUT_FILE
uptime >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Network connectivity check
echo "Network Connectivity Test:" >> $OUTPUT_FILE
ping -c 3 google.com >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

echo "Health check completed."



