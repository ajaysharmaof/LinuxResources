#!/usr/bin/env bash
#get all cmd line argument $@ or $* if we pass aruments at run time of a file if we don't pass argument then it return empty or nothing

for each in $@
do
 echo $each   #it return cmd line argument which we pass with file name during runtime 

done
