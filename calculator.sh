#!/bin/bash
echo "Welcome to the shell scripted calculator !!"
echo "1. Add"
echo "2. Substract"
echo "3. Multiply"
echo "4. Divide"
echo "5. Modulo"
echo "6. Exit"
choice=1
while [ $choice -ne 6 ]
do
	echo "Enter choice : "
	read choice
	case $choice in 
		1)
			echo "Enter num1 :"
			read x
			echo "Enter num2 :"
			read y
			sum=`expr $x + $y`
			echo "Sum of $x and $y is $sum"
			;;
		2)
			echo "Enter num1 :"
			read x
			echo "Enter num2 :"
			read y
			diff=`expr $x - $y`
			echo "Diff. of $x and $y is $diff"
			;;
		3)
			echo "Enter num1 :"
			read x
			echo "Enter num2 :"
			read y
			prod=`expr $x \* $y`
			echo "Product of $x and $y is $prod"
			;;
		4)
			echo "Enter num1 :"
			read x
			echo "Enter num2 :"
			read y
			quot=`expr $x / $y`
			echo "Quotient of $x and $y is $quot"
			;;
		5)
			echo "Enter num1 :"
			read x
			echo "Enter num2 :"
			read y
			mod=`expr $x % $y`
			echo "Remainder when $x is divided by $y is $mod"
			;;
		6)
			echo "Closing the Program..."
			;;
	esac
done
