#!/bin/bash
# Check if exactly one argument is provided
if [ "$#" -ne 1 ]
 then
    echo "Usage: $0 <directory>"
    exit 1
fi
read -p "Enter the name of the directory " dir
# input error check
if [ -z "$dir" ]
 then
    echo "Error: No input provided"
    exit 1
fi
#check if directory exists
if [ -d $dir ]
then
cd $dir
tar -cvf $dir.tar ./*
size_before=$(ls -lh $dir.tar | awk '{print $5}')
echo "The size before compression is $size_before"
gzip $dir.tar
size_after=$(ls -lh $dir.tar.gz | awk '{print $5}')
echo "The size after compression is $size_after"
else
	echo "This is not a directory"
fi
