#!/bin/bash

read -p "enter username: " username
echo "you entered $username"
sudo /usr/sbin/useradd -m $username
echo "new user added"

