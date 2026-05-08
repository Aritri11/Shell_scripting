#!/bin/bash
mkdir $1
find ~ -type f -name "*.txt" -exec cp {} /home/ibab/Lab6/$1/ \;
cd $1
ls -l
