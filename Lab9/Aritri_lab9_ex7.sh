#!/bin/bash
read -p "Enter the name of the file to perform the above operations: " file
while true
do
echo "What would you like to do today
1. Count the number of lines for a given file
2. Replace a with A in the file
3. Count the number of occurrences of “the” in the files
4. Exit to Unix Shell"
read choice
case $choice in
	1) count=$(wc -l < $file) 
		echo "The number of lines in $file is: $count" ;;
	2) value=$(sed -i 's/a/A/g' $file )
		echo "The new replaced file is $value" ;;
	3) output=$(grep -io 'the' $file | wc -l)
		echo "The number of times 'the' has occured is: $output" ;;
	4) exit ;;
	*) echo "Invalid option"
esac
done