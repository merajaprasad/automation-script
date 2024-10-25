#!/bin/bash
set -euo pipefail

read -p "enter a number: " num

break_function() {

   for (( i=1; i<=$num; i++ )); do
      echo $i
      if [ $i == 6 ]; then
         break

      fi

   done
}

break_function

echo
continue_function() {
   for ((i=1; i<=$num; i++)); do
      if [ $i == 6 ]; then
         continue
      fi
      echo $i
   done
}

continue_function