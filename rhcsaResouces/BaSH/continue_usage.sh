#!/usr/bin/env bash

echo "starting for loop"

<< 'mycomm'
for each in $(seq 1 10)
do
  if [[ $each -gt 5 ]]
  then
    break
  fi
  echo "$each"
done
echo "for loop is over"

mycomm

<< 'secomm'
for each in $(seq 1 10)
do
  if [[ $each -ne 5 ]]
  then
    echo "$each"
  fi
done

echo "end of loop"

secomm

for each in $(seq 1 10)
do
  if [[ $each -eq 5 ]]
  then
    continue	#skip 5 iteration
  fi
  
  echo "$each"
done

echo "for loop end"
