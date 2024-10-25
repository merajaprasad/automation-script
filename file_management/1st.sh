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

------------------------------------------------------------------
# another way

#!/bin/bash
set -euo pipefail

check_dir() {
   if [ ! -d script ]; then
      echo "script directory is not present, hence creating"

      mkdir script
      echo "directory is created now"

   else
      echo "directory is already present, do you want to delete"
      read -p "type 'ok' if you want to delete: " ok
      if [ "$ok" == "ok" ]; then
         rm -rf script/
         echo "directory is deleted"
      else
         echo "fine then directory is not removed"
      fi
   fi
}
check_dir

