#!/bin/bash

create_directory() {
   mkdir demo

}

if ! create_directory;
then
   echo "the code is being exited as the directory already exist"
   exit 1

fi

echo "this should not work because the code is interupted"


<< task
this is 2nd example of error handling, here we are deploying a django application
task

git_clone() {
   echo "cloning the repo"
   git clone https://github.com/LondheShubham153/django-notes-app.git


}

install_requirements() {
   echo "***installing dependencies***"
   sudo apt-get install docker.io nginx -y

}

restart_services() {
   echo "***restarting services***"
   sudo systemctl enable docker
   sudo systemctl restart docker
   sudo systemctl enable nginx
   sudo systemctl restart nginx

}

deploy() {
   # remove old images
   docker rm $(docker ps -aq)
   docker rmi $(docker images -q)
   docker build -t notes-app .
   docker run -d -p 8000:8000 notes-app:latest

}

echo "################## calling functions ########################"

if ! git_clone; then
   echo "***code directory already exist***"
   cd django-notes-app

fi


if ! install_requirements; then
   echo "installation failed"

fi

if ! restart_services; then
   echo "restartting services"

fi

if ! deploy; then
   echo "***software deployed**"
   exit 1
fi

echo "################## deployment completed ########################"