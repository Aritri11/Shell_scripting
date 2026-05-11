#!/bin/bash
#prompt user for input
read -p "Enter the name of the gzip file" file
#input error check
if [ -z $file ]
then
	echo "Error: No input provided"
	exit 1
fi
#check if the exists
if [ ! -f $file ]
then
	echo "Error: File does not exists"
	exit 1
	#take the words as input from user
read -p "Enter the word you want to replace:" old
read -p "Enter the new word: " new
#replace the old word with new word
sed -i s/$old/$new/ $file