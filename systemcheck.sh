#!/bin/bash

echo "=============================="
echo "   SYSTEM HEALTH CHECK"
echo "=============================="

# Date & Time
echo "Date & Time:"
date
echo "------------------------------"

# CPU Load
echo "CPU Load Average:"
uptime
echo "------------------------------"

# RAM Usage
echo "Memory Usage:"
free -h
echo "------------------------------"

# Disk Usage
DISK=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

echo "Disk Usage: $DISK%"

if [ $DISK -gt 80 ]
then
  echo "⚠ WARNING: Disk usage is HIGH!"
else
  echo "✅ Disk usage is OK"
fi

echo "------------------------------"
echo "Check completed successfully ✅"
