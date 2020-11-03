#!/bin/bash
echo "STRING MANIPULATIONS PROGRAM"
echo "1. Compare Strings"
echo "2. Joint strings"
echo "3. Length of the strings"
echo "4. Occurence of character"
echo "5. Occurence of word"
echo "6. Reverse string"
echo "7. Exit"
choice=1
while [ $choice !=  7 ]
do
	echo "Enter the choice : "
	read choice
	case $choice in
		1)
			echo "Enter str1 : "
			read str1
			echo "Enter str2 : "
			read str2
			len1=${#str1}
			len2=${#str2}
			if [ $len1 -gt $len2 ]
			then
				echo "$str1 is greater than $str2"
			elif [ $len1 -eq $len2 ]
			then 
				echo "$str1 is equal to $str2"
			else
				echo "$str1 is less than $str2"
			fi
			;;
		2)
			echo "Enter str 1 : "
			read str1
			echo "Enter str 2 : "
			read str2
			concat_str="$str1$str2"
			echo "Concatenated string is $concat_str"
			;;
		3)
			echo "Enter a str : "
			read str
			len=${#str}
			echo "The $str is $len characters long"
			;;
		4)
			echo "Enter a str : "
			read str
			echo "Enter a char : "
			read char
			flag=0
			len=${#str}
			i=0
			while [ $i -lt $len ]
			do
				if [ $char == ${str:$i:1} ]
				then
					flag=1
				fi
				i=`expr $i + 1`
			done
			if [ $flag -eq 1 ]
			then 
				echo "Char $char found in str $str"
			else
				echo "Char $char not found in str $str"
			fi
			;;
		5)
			echo "Enter a str : "
			read str
			echo "Enter a word : "
			read word
			flag=0
			len=${#str}
			i=0
			while [ $i -lt $len ]
			do
				if [ $word == ${str:$i:${#word}} ]
				then
					flag=1
				fi
				i=`expr $i + 1`
			done
			if [ $flag -eq 1 ]
			then 
				echo "Word $word found in str $str"
			else
				echo "Word $word not found in str $str"
			fi
			;;
		6)
			echo "Enter a string : "
			read str
			len=${#str}
			i=$len
			while [ $i -ge 0 ]
			do
				rev="$rev${str:$i:1}"
				i=`expr $i - 1`
			done

			echo "$rev is reverse of $str"
			;;
		7)
			echo "Closing the Program..."
			;;
	esac
done
