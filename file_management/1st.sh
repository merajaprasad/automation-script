#!/bin/bash
set -euo pipefail

<< task
name: create and delete directory
task

if ! cd scripts > /dev/null 2>&1; then
   echo "scripts directory is not present. hence creating"
fi


# creating directory
create_dir() {

   mkdir scripts
   # cd scripts/
   # echo "you are inside scripts directory"
   sleep 5

}

create_dir


# deleting directory
delete_dir() {
   rm -rf scripts/ 
}

delete_dir
