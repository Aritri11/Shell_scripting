#!/bin/bash
read -p "Enter the source directory" input 
for source in `ls ${input}`
do
	echo $source
done
read -p "Enter the destination directory" output 
for destination in `ls ${output}`
do
	echo $destination
done
cp -R $input/* $output

