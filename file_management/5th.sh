#!/bin/bash
set -euo pipefail

<< Task
name: Automated File Downloader Script
Practice: Use wget or curl to download files and then move them to specific directories based on their type.
Example Task: Write a script to download images from a list of URLs and save them to an Images folder.
Task


download_image() {

   DIRECTORY="./image"
   URL_FILE="./urls.txt"


   if [ ! -d $DIRECTORY ]; then
      sudo mkdir -p $DIRECTORY
      echo "created image directory"

   else
      echo "$DIRECTORY is already present.."
   fi


   while IFS= read -r url; do
      sudo wget -P "$DIRECTORY" "$url"
   done < $URL_FILE
}

download_image



