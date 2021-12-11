#!/usr/bin/env bash
path=$1

if [[ $# -ne 1 ]]
then
  echo "Usage: $0 <any path>"
  exit
fi
#for each in loop1 demo
for each in $(ls $path)
do
  if [[ -x loop1 ]]
  then
    echo "$each is having execution permission"
  else
    echo "$each is not having execution permission"
  fi
done

