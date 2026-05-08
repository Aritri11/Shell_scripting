#!/bin/bash
sum=$(( $1 +$2 ))
echo "Sum of $1 and $2 is $sum"
diff=$(( $1 -$2 ))
echo "Difference of $1 and $2 is $diff"
product=$(( $1 *$2 ))
echo "Product of $1 and $2 is $product"
quotient=$(( $1 /$2 ))
echo "The quotient of $1 and $2 is $quotient"
remainder=$(( $1 %$2 ))
echo "Remainder of $1 and $2 is $remainder"
