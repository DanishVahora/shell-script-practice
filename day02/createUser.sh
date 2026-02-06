#!/bin/bash

echo "Process of adding a new sudo users ...."



read -p "Enter you name : " username

sudo adduser $username

echo "Sudo user with $username added successfully"

