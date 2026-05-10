#!/bin/bash
read -p "Enter your name: " name
function greeting
{
	echo "Namaste $name"
}
function greet
{
	echo "Hola $name"
}
greeting