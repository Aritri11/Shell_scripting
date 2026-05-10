 #!/bin/bash
#Take value from user
read -p "Enter the number of terms for which you want the fibonacci series: " n
#Initialize the first two fibonacci number
a=0
b=1
#print the first two numbers in fibonacci series
echo -n "Fibonacci series for $n terms : $a $b"
#Loop for fibonacci series
for (( i=2 ; i<n ; i++ ))
do
	c=$(( a + b ))
	echo -n " $c "
	a=$b
	b=$c
done
#end of for loop
echo