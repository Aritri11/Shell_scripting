BEGIN{
#Initialize 'max' to 0
	max=0
	#Initialize 'min' to 1/0, which is a positive infinity to awk
	min=1/0
}
{
#check the min value
	if ($2<min)
	{
	min=$2
	}
	#check max value
	if ($2>max)
	{
	max=$2
	}
}
END{
	print "Minimum value in column 2:", min
    print "Maximum value in column 2:", max
}