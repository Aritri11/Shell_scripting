#!/bin/bash
read -p "Enter the number for the multiplication table:" number
echo "Multiplication table for $number:"
i=1
while [ $i -le 12 ]
do
result=$(( $number * $i ))
echo "$number X $i = $result"
i=$(( i+1 ))
done 
