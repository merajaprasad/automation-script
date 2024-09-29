#!/bin/bash
set -euo pipefail

<< task
name: Temporary File Cleaner Script
Example_Task: Delete all .tmp files older than 7 days from the /tmp directory.
Practice: Use 'find' and 'rm' to delete files based on age or file type.
task

delete_tmp() {

   # Remove orphaned packages
   sudo apt autoremove -y
   sudo apt clean all -y

   # check the file permission in /tmp
   echo 'checking the files permission in /tmp'
   sudo ls -ltr /tmp/

   # print temp files modified more then 7 days ago
   sudo find /tmp -name '*.temp' -type f -mtime +7 -exec echo {} \;

   # delete temp files modified more then 7 days ago
   sudo find /tmp -name '*.temp' -type f -mtime +7 -exec rm -rf {} \;  

   # delete all files and folders (optional)
   sudo rm -rf /tmp/*

   # delete cache files
   sudo rm -rf /root/.cache/*
   sudo rm -rf /var/cache/*
}

delete_tmp







