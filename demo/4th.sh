#!/bin/bash
set -euo pipefail

read -p "enter a starting number: " snum
read -p "enter a ending number: " enum
 
increment_loop() {
   while [ $snum -le $enum ]; do
      echo $snum
      ((snum++))
   done
}

increment_loop










