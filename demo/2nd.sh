#!/bin/bash
set -euo pipefail

read -p "what is your designation: " designation

for i in $designation; do
   echo $i
done


