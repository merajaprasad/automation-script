#!/bin/bash
set -euo pipefail


remove_awscli() {
   if which aws > /dev/null 2>&1; then

      echo "removing awscli ....."

      # delete sumbolic link
      sudo rm /usr/local/bin/aws
      sudo rm /usr/local/bin/aws_completer

      # remove installation directory
      sudo rm -rf /usr/local/aws-cli
      sudo rm -rf ~/.aws/
      rm -rf awscliv2.zip ./aws
      echo "### awscli is removed properly...enjoy"
   fi

}

remove_awscli
