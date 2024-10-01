#!/bin/bash
set -euo pipefail

date +"%H:%M:%S"

read -p "enter a name of operating system: " os
echo "you have type os name is $os"

if [ $os == "windows" ]; then
   echo "windows is by microsoft"

elif [ $os == "linux" ]; then
   echo "linux is open source"
else
   echo "i have never heard this operating system"

fi



