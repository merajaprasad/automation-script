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
      echo "$DIRECTORY size is greter then $THRESHOLD KB"
   
   else 
      echo "$DIRECTORY size is less then $THRESHOLD KB"
   fi
}

directory_size_monitoring

-------------------------------------------------------------------------

directory_size_monitoring() {
   DIRECTORY="/var/log/"
   THRESHOLD=500  # size in kb
   DIR_SIZE=$(sudo du -sk $DIRECTORY | cut -f1)
   DIR_SIZE_MB=$(($DIR_SIZE / 1024 ))


   # printing the disk size
   echo $DIR_SIZE_MB


   if [ $DIR_SIZE_MB -gt $THRESHOLD ]; then
      echo "$DIRECTORY size is greter then $THRESHOLD MB"
   
   else 
      echo "$DIRECTORY size is less then $THRESHOLD MB"
   fi
}

directory_size_monitoring



