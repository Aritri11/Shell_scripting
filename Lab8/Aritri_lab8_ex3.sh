                                                                                                                                                 #!/bin/bash
read -p "Enter the number: " num
prime=TRUE
if (( num==1 ))
then
	echo "This is a special number"
	echo "This is not a prime number"
else
	for (( i=2; i<num; i++ ))
	do
		if (( num%i==0 ))
		then
			echo $i
			prime=FALSE
			break;
		else
			continue;
		fi
	done
	echo "The number $num is a prime number: $prime"
fi
