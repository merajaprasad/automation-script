#!/bin/bash
set -euo pipefail

<< task
Name: Directory Size Monitoring Script
Practice: Use du, df, and conditional statements to check directory sizes and alert if it exceeds a threshold.
Example Task: Monitor /home/user/Downloads and send an email alert if it exceeds 1 GB.
task

directory_size_monitoring() {
   DIRECTORY="/home/jenkins/ansible-all"
   THRESHOLD=100  # size in kb
   
   DIR_SIZE=$(du -sk $DIRECTORY | cut -f1)

   if [ $DIR_SIZE -gt $THRESHOLD ]; then
      echo "size is greter then 100KB"
   
   else 
      echo "the size is less then 100KB"
   fi
}

directory_size_monitoring




