#!/usr/bin/env bash
#IFS - internal field seprater

<< 'mycomm'
while IFS="," read field1 field2 field3 field4 field5
do
  echo "$field2"
done < server_info.txt
mycomm

Old_IFS=$IFS
#cat server_info.txt | awk 'NR!=1 {print}' | while IFS="," read f1 f2 f3 f4 f5
cat server_info.txt | awk 'NR!=1 {print}' | while IFS="," read f1 f2
# print the line NR numberof record not equal to 1 except 1st line print all line
do
  #echo "$f1" #$f2 field assign rest of fields
  echo "$f1 $f2"
done

IFS=$Old_IFS  #not changeing orignal IFS
