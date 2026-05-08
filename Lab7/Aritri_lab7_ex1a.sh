#!/bin/bash
celsius=100
fah=$(($celsius*9))
fah=$(($fah/5))
fah=$(($fah+32))
echo "The temperature in fahrenheit is:$fah F"
