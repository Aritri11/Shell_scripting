#!/bin/bash
read -p "Enter a two digit number: " num
if (( num >= 10 & num <=20 ))
then
	echo " The number $num lies between 10 and 20 "
else
	echo "The number $num does not lie between 10 and 20"
fi