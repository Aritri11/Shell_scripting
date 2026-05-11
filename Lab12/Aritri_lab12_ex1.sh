#!/bin/bash
#input error check
if [ "$#" -ne 2 ]
then
	echo "Usage: $0 <directory_name> <file_name>"
	exit 1
fi
#assigning arguments to variables
dir=$1
file=$2
#creating the directory and file
mkdir $1
cd $1
#passing content to the file
touch $2 | echo "This is a test file" > $2
#display the content of file
cat $2
