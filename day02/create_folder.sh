#!/bin/bash

read -p "Give me folders name you want to create : " name
read -p "Range :  From " from 
read -p "To : " to 

for ((i = $from; i<$to ; i++))
do
	mkdir "Day$i"
done

