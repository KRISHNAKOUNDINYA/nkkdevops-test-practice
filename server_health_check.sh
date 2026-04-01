#!/bin/bash

echo "===== Server Health Check ====="

echo "Uptime:"
uptime

echo "Disk Usage:"
df -h

echo "Memory Usage:"
free -h

echo "Running Processes:"
ps aux | wc -l

echo "==============================="