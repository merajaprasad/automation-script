#!/bin/bash
set -euo pipefail

<< task
name: File Backup Script
Practice: Use cp, tar, or rsync to create backups of directories and add timestamps to the backup files.
Example Task: Write a script to back up '/var/www/html' to '/backup/html' and compress it using tar.
task


# backup_script() {

#    # create a backup/html directory
#    sudo mkdir -p /backup/html
#    sudo cp /var/www/html/*  /backup/html/

# }

backup_script() {

   DEST_DIR="/backup/html"
   TIMESTAMP=$(date +"%Y-%m-%d-%H:%M:%S")
   BACKUP_FILE="$DEST_DIR/html_backup_$TIMESTAMP.tar.gz"

   # check if the destination directory exist
   if [ ! -d $DEST_DIR ]; then
      sudo mkdir -p $DEST_DIR
   else
      echo "$DEST_DIR directory already exist"
      sleep 5   
   fi

   # copy the files
   echo "Taking Backups"
   cd /var/www/ && sudo tar -czvf "$BACKUP_FILE"  html

   if [ $? -eq 0 ]; then
      echo "Backup Successful : $BACKUP_FILE "
   else
      echo "Backup Faild"
      exit 1
   fi
}

backup_script



