#!/bin/bash
set -euo pipefail

create_file() {

   FILE_PATH="/home/jenkins/automation-script/cron_job"
   TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)

   if [ ! -f "$FILE_PATH/demofile" ]; then
      touch $FILE_PATH/demofile
      echo "This File is created by cron job at $TIMESTAMP" >> $FILE_PATH/demofile

   else
      echo "This line is printed by cron job at $TIMESTAMP" >> $FILE_PATH/demofile

   fi

}
create_file