#!/bin/bash
set -euo pipefail


echo "hello" | sed 's/hello/goodbye/'

git_clone() {
   git clone https://github.com/merajaprasad/wanderlust-project.git
}

git_clone

if git_clone; then
   echo "directory is already present"
   cd ./wanderlust-project/kubermnetes/
   sed -i 's/wanderlust:latest/wanderlust:oldest/' deployment.yaml
   cat deployment.yaml

