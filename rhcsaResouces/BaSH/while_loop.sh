#!/usr/bin/env bash
<< 'mycomm'
#for((;;))
#while true
#while :
do
  echo "infinete loop"
  echo "---"
done
mycomm

<< 'mycomm2'
while datee &> /dev/null  #&> /dev/null don't show output on stdout
do
  echo "date command is executing with while loop"
done

mycomm2

<< 'mycomm3'
#while [[ 4 -gt 1 ]]
start=1
while [[ $start -le 10 ]]
do
  echo "$start"
  ((start++))
done

mycomm3

<< 'mycomm4'
file_name="server_info.txt"
while read each_lines
do
  echo "$each_lines"
done < $file_name

mycomm4

#cat server_info.txt | while read each_lines
ls -lrt | while read each_lines
do
  echo "$each_lines"
  echo "-----------"
done









