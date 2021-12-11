#!/usr/bin/env bash

read -p "Enter a value: " a
read -p "Enter b value: " b

#echo "$a $b" | awk '{x=$1 ; y=$2; print "x="x , "b="y }'
#echo "$a $b" | awk '{a=$1 ; b=$2; print "a="a , "b=" b}'
#echo "$a $b" | awk '{a=$1 ; b=$2; print "a="a , "sumb="a+b}'
awk -v a=$a -v b=$b 'BEGIN { print a+b }'
