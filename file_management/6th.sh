#!/bin/bash
set -euo pipefail

<< task
Name: Disk Usage Report Script
Practice: Use df, du, and redirection to generate a report.
Example Task: Write a script to check disk usage for /home, /var, and /tmp, and save the report to /home/user/disk_report.txt.
task


disk_usage_report() {

   DIRECTORY="/home/$USER"
   TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
   REPORT_FILE=$DIRECTORY/disk_report_$TIMESTAMP.txt

   for DIR in /home /var /tmp; do

      echo "Disk Free Report $DIR :"  >> $REPORT_FILE
      sudo df -h $DIR >> $REPORT_FILE

      echo "Disk Usage Report $DIR :"  >> $REPORT_FILE
      sudo du -sh $DIR >> $REPORT_FILE

   done


   if [ $? == 0 ]; then
      echo "Report is saved sucessfully $REPORT_FILE"
   else
      echo "report is faild"
   fi

}


 
disk_usage_report

