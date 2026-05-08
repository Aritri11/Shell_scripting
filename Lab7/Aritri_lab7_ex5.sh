#!/bin/bash
for file in `ls ${pwd}`
do
cp -r $file ${file}.bak
echo "copied $file"
done 
