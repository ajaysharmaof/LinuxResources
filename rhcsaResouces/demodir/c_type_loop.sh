#!/bin/bash
clear 
echo "hii"
cnt=1

for((;;))
do
  echo "c type of loop: $cnt"
  ((cnt++))
  sleep 1
  if [[ $cnt -eq 10 ]]
  then
    break
  fi
done

echo "end of loop"
<< 'mycomm'
#for((cnt=1;cnt<=10;cnt++))
do
  echo "c type loop:  $cnt"
  sleep 1
done
echo "bye"

mycomm
