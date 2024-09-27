#!/bin/bash

if which httpd; then
   echo "httpd is installed"

   if systemctl is-active --quiet httpd; then
      echo "httpd service is also running"
   else
      echo "httpd service is istalled but not running"
   fi

else
   echo "httpd is not installed"

fi

#!/bin/bash
# pass the software name at rumtime
if which $1; then
   echo "$1 is installed"

   if systemctl is-active $1; then
      echo "$1 service is also running"
   else
      echo "$1 service is istalled but not running"
   fi

else
   echo "$1 is not installed"

fi








