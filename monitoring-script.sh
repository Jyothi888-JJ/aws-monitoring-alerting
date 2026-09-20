#!/bin/bash

echo "===== AWS Monitoring Check ====="

echo "Current Date:"
date

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Memory Usage:"
free -m

echo ""
echo "System Uptime:"
uptime

echo ""
echo "Monitoring check completed."
