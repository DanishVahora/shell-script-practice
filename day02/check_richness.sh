#!/bin/bash 

echo "We will decide whether you are rich or not "

sleep 5

read -p "Enter your income please : " income

if [[ $income -ge 100000 ]];
then 	
	echo "You are super rich!"
elif [[ $income -ge 50000 && $income -lt 100001 ]];
then 
	echo "You are average guy!"
else
	echo "I think you are poor!"
fi




