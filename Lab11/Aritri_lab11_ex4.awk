BEGIN{FS=","}
{name=$4
year=$2
age=$3
movie=$5
if ((year<1965) && (NR>1))
printf ("%s won an Oscar in %d when she was %d years old for the movie(s) %s\n", name,year,age,movie)}
