#!/bin/bash
# Check if exactly one argument is provided
if [ "$#" -ne 1 ] 
then
    echo "Usage: $0 <path>"
    exit 1
fi
#Enter the path
read -p "Enter the path " path
#check if path exists
if [ -d "$path" ]
then
	echo "This is a directory"
elif [ -f "$path" ]
	then
		echo "This is a file"
	else
		echo "This is neither a file nor a directory"
	fi
#else
#	echo "$path does not exists"
#fi