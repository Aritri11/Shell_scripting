#!/bin/bash
read -p "Enter temperature in celsius:" celsius
fah=$(($celsius*9))
fah=$(($fah/5))
fah=$(($fah+32))
echo "The temperature in fahrenheit is:$fah F"
