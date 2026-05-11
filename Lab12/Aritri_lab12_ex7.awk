BEGIN{
	Total=0
}
{
	total=total+$2
}
END{
	printf "The total expenses are: %d\n ",total
}