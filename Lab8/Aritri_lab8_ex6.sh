#!/bin/bash
echo "These are the options for various operations :
1.Addition
2.Substraction
3.Multiplication
4.Division
5.Remainder
6.Exit to Unix shell"
read -p "Enter the first number for the operations: " a
read -p "Enter the first number for the operations: " b
while true
do
echo "Enter an option for the operation that you want to perform :
1.Addition
2.Substraction
3.Multiplication
4.Division
5.Remainder
6.Exit to Unix shell"
read choice
case $choice in
	1) sum=$(( $a + $b ))
	echo "The sum of the numbers are: $sum" ;;
	2) sub=$(( $a - $b ))
	echo "The substraction of the numbers are: $sub" ;;
	3) mul=$(( $a * $b ))
	echo "The multiplication of the numbers are: $mul" ;;
	4) div=$(( $a / $b ))
	echo "The quotient of the numbers are: $div" ;;
	5) rem=$(( $a % $b ))
	echo "The remainder of the numbers are: $rem" ;;
	6) exit ;;
	*) echo "Invalid option"
esac
done