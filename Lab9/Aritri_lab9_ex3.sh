#!/bin/bash
#Check if a number is provided as an argument
if [ $# -eq 0 ]
then
	echo " Usage: $0 number"
	exit 1
fi
#Get the number from user
read -p "Enter a 3 digit number: " num
#Initialize the sum variable
sum=0
#Loop through each digit in the number
while (( num > 0 ))
do
#Get the last digit
digit=$(( num % 10 ))
#Add the digit to the sum
sum=$(( sum + digit ))
#Remove the last digit from the number
num=$(( num / 10 ))
done
#print the result
echo "The sum of the digits is: $sum"