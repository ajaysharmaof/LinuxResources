#!/usr/bin/env bash

#differnce b/w $@ and $*
#$* -> consider all argument as single value (single line)
#$@ -> consider all argument as differnt arument or value 

echo "The below output is for \$*"
#for each in $*
for each in "$*"
do
  echo $each
done

echo "The below output is for \$@"
#for each in $@
for  each in "$@"
do
  echo $each
done

# ./diff_bw_at_star.sh 3 4 5 a  ->no difference consider 4 argument
# ./diff_bw_at_star.sh 3 "4 5" a  ->no difference consider 4 arguments instead of 3 argument which in "4 5" should consider it 1 argument

<< 'mycomm'
put $* and $@ in "$*" "$@" 
./diff_bw_at_star.sh 3 4 5 a

$* -> single value consider all arguments
$@ -> consider 4 agument as it as

./diff_bw_at_star.sh 3 "4 5" a		
$* -> single vaule consider all arguments
$@ -> consider 3 argument seprartely 
3
4 5
a

mycomm

<< 'mycomm'
echo "$@"
echo "$*"
#/diff_bw_at_star.sh 3 4 5
#3 4 5			#no differnce but in for loop
#3 4 5

mycomm


