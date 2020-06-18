#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label
#using read command to get three numbers from the user.
read -p "Input No.1? " firstnum
read -p "Input No.2? " secondnum
read -p "Input No.3? " thirdnum
sum=$((firstnum + secondnum + thirdnum))
#putting the sum of three numbers into a variable sum

product=$((firstnum * secondnum * thirdnum))
#putting the product of three numbers into a variable product.


cat <<EOF
The sum of $firstnum , $secondnum and $thirdnum numbers is $sum
The product of $firstnum , $secondnum and $thirdnum numbers is $product
EOF
