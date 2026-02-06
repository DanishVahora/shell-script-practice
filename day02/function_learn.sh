#!/bin/bash 

function check_rich(){
echo "We will decide whether you are rich or not "

sleep 5

read -p "Enter your income please : " income

if [[ $1 -ge 100000 ]];
then
        echo "You are super rich!"
elif [[ $1 -ge 50000 && $1 -lt 100001 ]];
then
        echo "You are average guy!"
else
        echo "I think you are poor!"
fi
}

check_rich 100000

