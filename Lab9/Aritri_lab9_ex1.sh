#!/bin/bash
#take input from user
read -p "Enter the number you wAnt to check: " num
#checks the number is valid or not
if (( num <= 0 ))
then
	echo "INVALID INPUT"
	#check if the number is divisible by 2 or not
elif (( num % 2 == 0 ))
then
	echo "The number $num is even"
else
	echo "The number $num is odd"
fi
#end of condition