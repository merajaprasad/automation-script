#!/bin/bash
set -euo pipefail


echo "hello" | sed 's/hello/goodbye/'

git_clone() {
   if [ -d wanderlust-project ]; then
      echo "directory is already present"
   else
      echo "cloning git repo"
      git clone https://github.com/merajaprasad/wanderlust-project.git
   
   fi
}
git_clone



changing_manifest() {
   if [ -d wanderlust-project ]; then
      cd ./wanderlust-project/kubernetes/

      echo "checking old image version"
      grep 'image:' frontend.yaml | awk -F: '{print $3}'
      sleep 2

      echo "updating with new image version"
      sed -i 's/wonderlust-front.*/wonderlust-front:v2.1.2/' frontend.yaml
      grep 'image:' frontend.yaml | awk -F: '{print $3}'
   else
      echo "ERROR: wanderlust-project is not present"
   
   fi
}

changing_manifest


