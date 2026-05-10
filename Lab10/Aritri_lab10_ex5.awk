BEGIN {FS=","}
#{$3 >30 {print NR, $1}}
$3 > 30 {printf "%s lives in %s\n", $1,$4}
#{END {print "Done"}}