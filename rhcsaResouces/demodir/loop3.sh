#!/bin/bash
#for each in 1 2 3
for each in $(ls)
do
  echo "loop iteration"
  echo "for iteration value:  $each"
done
