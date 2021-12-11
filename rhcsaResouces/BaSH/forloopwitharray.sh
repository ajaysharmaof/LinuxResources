#!/usr/bin/env bash

<< 'mycomm'
for eachvalue in docker nginx
do
  echo "The service is: $eachvalue"
done
mycomm

myservices=(docker ngnix)
for eachvalue in ${myservices[@]}
do
  echo "The service is: $eachvalue"
done
