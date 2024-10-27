#!/bin/bash
set -euo pipefail

# passing the arguments during runtime

<< task
this script is to create directory through command line argument
$1 is to provide directory name = suppose 'mydir'
$2 is to start range of directory = suppose '1'
$3 is end range of directory = suppose '10'
task

for (( num=$2; num<=$3; num++ ))
do
    sudo mkdir "$1$num"
done

echo "directory created"
echo
ls -ltr
sleep 5

# remove those created directory automatically
rm -rf $1*

echo "directory removed"

