#!/bin/bash
read -p "Enter your age:" age
if (( age > 0 )) && (( age <= 4 ))
then
echo "You are an infant"
elif (( age >= 5 )) && (( age <= 17 ))
then
echo "You are a child"
elif (( age >= 18 )) && (( age <= 59 ))
then
echo "You are adult"
elif (( age >= 60 ))
then
echo "You are a senior citizen"
elif (( age >= 120 ))
echo "Invalid input"
fi

