#!/usr/bin/env bash
COLUMNS=$(tput cols)
for((i=1;i<=COLUMNS;i++))
do
  if [[ $i -eq $COLUMNS ]]
  then
    echo "-"
    break
  fi
  echo -n "-"
done
