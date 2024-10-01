#!/bin/bash
set -euo pipefail

<< Task
Name: Log File Rotation Script
Practice: Use mv to rename log files, compress old logs with gzip, and delete old backups.
Example Task: Rotate log files in /var/log every week and keep only 1 weeks of logs.
Task


LOG_DIR=/var/log
RETENTION_DAYS=7

log_rotation() {

   for log_file in $LOG_DIR/*.log; do

      # check if log files are exist
      if [ -e $log_file ]; then

         # rename the log files
         sudo mv $log_file $log_file.1

         # gzip all the log files
         sudo gzip $log_file.1
      fi

   done

}

cleanup_old_log() {

   echo "Deleting logs from $LOG_DIR directory older then 7 days"

   sudo find $LOG_DIR -name *.gz -type f -mtime +7 -exec rm -rf {} \; 
   # -exec for execute
   # {} placeholder for each file that find locates
   # Terminates the -exec part of the command

   echo "logs are sucessfull deleted"
   ls -ltr /var/log/

}

log_rotation
cleanup_old_log




