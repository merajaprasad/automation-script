#!/bin/bash
set -euo pipefail

CPU_THRESHOLD=80
MEMORY_THRESHOLD=80
DISK_THRESHOLD=80

check_cpu() {

   CPU_USAGE=$(top -bn1 | grep 'Cpu' | awk '{print $2 + $4}')

   if [ $CPU_USAGE -gt $CPU_THRESHOLD ]; then
      echo "High CPU Usage Detected"
   else
      echo "CPU is less then $CPU_THRESHOLD %"
   fi
}

check_cpu