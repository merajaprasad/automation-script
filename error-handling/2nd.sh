#!/bin/bash
set -euo pipefail

if ! which aws > /dev/null 2>&1; then
   echo "AWS CLI is not found, hence installing ......"
   
else
   echo "awscli is already installed. exiting from script..."
   sleep 3   
   exit 1
fi


Install_awscli() {

   # installing AWSCLI
   curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
   unzip awscliv2.zip
   sudo ./aws/install

   # varify installation
   aws --version

   # Cleanup zip file
   rm -rf awscliv2.zip ./aws

   
}


Install_awscli