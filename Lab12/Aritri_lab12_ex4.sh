#!/bin/bash
#prompt user for input
read -p "Enter the name of the gzip file" gfile
#input error check
if [ -z $gfile ]
then
	echo "Error: No input provided"
	exit 1
fi
#check if the exists
if [ ! -f $gfile ]
then
	echo "Error: File does not exists"
	exit 1
fi
if [ -f $gfile ]
then
	#unzip the file
	gunzip $gfile
	#remove gz extension
	unzipfile="${gfile%.gz}"
	#untar the file
	tar -xvf $unzipfile
	#display the contents
	ls  $unzipfile
else
	echo "It is not a gzip file"
fi
