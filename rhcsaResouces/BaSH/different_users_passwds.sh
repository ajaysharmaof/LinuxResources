#!/usr/bin/env bash

#for each_ser_info in $(cat server_info.txt)
#(for loop doesn't consider in 1 var treat differnt of every field)
#while loop entire line store in a varibale
#while read each_ser_info
#while read 4 field assign to 4 variable respectively
#-n ->don't expect input from stdin. prevent reading from stdin or we can use also instead for second server read automaticalyy </dev/null

while read ser user passvar cmd1 cmd2
do
  echo "Executing $cmd1 on $ser with user as $user and password $passvar "
  sshpass -p $passvar ssh -n -o StrictHostKeyChecking=No $user@$ser "$cmd1"

  echo "Executing $cmd2 on $ser with user as $user and password $passvar "
  sshpass -p $passvar ssh -n -o StrictHostKeyChecking=No $user@$ser "$cmd2"
  echo "========================================================================"
  			#or
  #sshpass -p $passvar ssh -n -o StrictHostKeyChecking=No $user@$ser "$cmd" < /dev/null
  
  #echo "$each_ser_info"
  #echo "$ser"

done < server_info.txt
