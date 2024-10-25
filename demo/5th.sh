#!/bin/bash

create_directory() {
   mkdir demo
}

if ! create_directory; then
   echo "directory is already present"

else
   echo "directory is created"
fi

varify_aws_cli() {
   if which aws /dev/null 2>&1; then
      echo "aws cli is installed"
   else
      echo "aws_cli is not installed"
   fi
   
}

varify_aws_cli


