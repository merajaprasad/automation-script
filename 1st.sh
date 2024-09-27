#!/bin/bash
which bash
sleep 2

read -p "enter a name: " username
echo "The current user name is $username"

# create new user
sudo useradd -m $username
cat /etc/passwd | grep $username

# create password for user
echo "now create a password for $username"
sudo passwd $username

sudo cat /etc/shadow




