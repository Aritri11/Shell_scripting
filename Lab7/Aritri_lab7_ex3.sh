#!/bin/bash
read -p "Enter the name of the directory:" dir
#dir=/home/ibab
if [ -d $dir ]
then
echo " The directory $dir is present"
else
echo "The directory $dir is absent" 
fi
read -p "Enter the name of the file:" file
if [ -e $file ]
then
echo "The file $file is present"
else
echo "THe file $file is absent"
fi
