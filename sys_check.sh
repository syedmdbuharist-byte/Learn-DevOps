#!/bin/bash

echo "=============================="
echo "   SYSTEM HEALTH REPORT       "
echo "=============================="

# 1. Check current logged-in user
echo "Current User: $(whoami)"

# 2. Check system uptime
echo "System Uptime: $(uptime -p)"

# 3. Check available memory (RAM)
echo "Available Memory:"
free -h | awk 'NR==2{print "Total: " $2 ", Used: " $3 ", Free: " $4}'

echo "=============================="

