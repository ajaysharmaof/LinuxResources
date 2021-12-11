#!/usr/bin/bash
clear
read -p "Enter num-1: "  a
read -p "Enter num-2: "  b
echo "========================="
echo "Enter 1. Addition"
echo "      2. Sub"
echo "      3. Mul"
echo "      4. Div"
echo "========================="
read -p "Enter your option(1-4): " opt

case $opt in
	1)
		echo "you selected addition"
		echo "the addition of $a and $b is: $((a+b))"
		;;
	2)
		echo "you selected substration"
		echo "the subtration of $a and $b is: $((a-b))"
		;;
	3)
		echo "you selected multiplication"
		echo "multiplication of $a and $b is: $((a*b))"
		;;
	4)
		echo "you selected division"
		echo "division of $a with $b is: $((a/b))"
		;;
	*)
		echo "you selected invalid option"
		;;
esac
