#!/bin/bash
x=5
y=89
((sum=x+y))
echo "sum of $x and $y :$sum"

result=$(bc<<< "scale=2;$y/$x")
echo "division o $y and $x : $result"
