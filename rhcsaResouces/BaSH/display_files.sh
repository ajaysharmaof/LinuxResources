#!/usr/bin/env bash
#ls *.txt

<< 'mycomm'
for each_file in $(ls)
do
  echo "$each_file"
done

mycomm

<< 'mycm'
#only get 1st found file not all
$cnt=1
for each_file in $(ls *.txt)
do
  if [[ $cnt -eq 1 ]]
  then
    echo "$each_file"
    ((cnt++))  
  fi
done

mycm

echo "start of loop"
cnt=1
for each_file in $(ls *.txt)
do
  if [[ $cnt -eq 1 ]]
  then
    echo "$each_file"
    break               #break stop the execution of for loop only not for entire shell
    #exit		#exit stop shell and not further execute
  fi
done

echo "end of loop"
