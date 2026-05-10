#!/bin/bash
#Check if a number is provided as an argument
read -p "Enter the number: " num
if [ -z $num ]
then
	echo " Usage: $0 number"
	exit 1
fi
sum=0
for num in "$@"
do
sum=$((sum + num))
done
echo "The sum of the digits are: $sum"