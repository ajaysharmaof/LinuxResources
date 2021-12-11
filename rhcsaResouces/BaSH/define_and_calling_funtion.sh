#!/usr/bin/env bash

read_input()
{
  read -p "Enter first num: " num1
  read -p "Enter second num: " num2
}

addition()
{
  sum=$((num1+num2))
  echo "The addition of $num1 and $num2 is: $sum"
}

subtration()
{
  sub=$((num1-nub2))
  echo "The subtration of $num1 and $num2 is: $sum"
}

read_input
addition
subtration

