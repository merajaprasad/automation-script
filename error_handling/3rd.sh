#!/bin/bash
set -euo pipefail


remove_awscli() {
   if which aws > /dev/null 2>&1; then

      echo "removing awscli ....."

      # delete sumbolic link
      sudo rm /usr/bin/aws
      sudo rm /usr/bin/aws_completer

      # remove installation directory
      sudo rm -rf /usr/local/aws-cli
      sudo rm -rf ~/.aws/
      rm -rf awscliv2.zip ./aws
      echo "### aws_cli is removed properly...enjoy"

   else
      echo "aws cli is not present"
   fi

}

remove_awscli
