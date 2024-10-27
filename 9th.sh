#!/bin/bash
set -euo pipefail

echo "which operating system are you using ?"
echo "windows, Android, Chrome, Linux, others?"
read -p "type your os name : " os

case $os in
   Windows|windows)
      echo "windows is good for begineers"
      ;;
   Linux|linux)
      echo "linux is good for DevOps engineers"
      ;;
   Android|android)
      echo "Android is besically used for mobile operating system"
      ;;
   Chrome|chrome)
      echo "chrome os is also like android but used in Laptop"
      ;;
   *)
      echo "this is also a good operating system"
      ;;
esac
