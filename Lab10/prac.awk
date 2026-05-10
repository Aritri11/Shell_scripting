#{cel=$1;
#fah= cel*1.8 +32;
#printf "The temperature %d degree in fahrenheit is %f\n",
#cel,fah}

#BEGIN {FS=","}
#$3>30 {printf "%s lives in %s\n",$1,$4}


#BEGIN {FS=","}
#{name=$4
#year=$2
#age=$3
#movie=$5
#if ((year<1965) && (NR>1))
#printf"%s won an Oscar in %s when she was %d years old fot the movie(s) %s\n",name,year,age,movie
#}


BEGIN {FS=","}
{print $4} | uniq -d
END{print done}
