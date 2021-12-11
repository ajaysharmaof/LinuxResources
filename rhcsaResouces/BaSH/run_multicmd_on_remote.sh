#!/usr/bin/env bash

<< 'mycomm'
echo "The date command output on server : 192.168.4.1"
sshpass -f passfile ssh -o StrictHostKryChecking=No ajay@192.168.4.1 "date"
echo "-------------------------------------------------"
echo "The uptime command output on server : 192.168.4.1"
sshpass -f passfile ssh -o StrictHostKryChecking=No ajay@192.168.4.1 "uptime"
echo "--------------------------------------------------"
echo "The free -m command output on server : 192.168.4.1"
sshpass -f passfile ssh -o StrictHostKryChecking=No ajay@192.168.4.1 "free -m"
echo "-------------------------------------------------"

mycomm

for each_server in 192.168.0.12
do
  echo "Executing cmds on $each_server"
  echo "=============================="
  for each_cmd in date uptime "free -m"
  do
    echo "The $each_cmd command output on server: $each_server"  
    sshpass -f /home/ajay/passfile ssh -o StrictHostKeyChecking=No ajay@$each_server "$each_cmd"
    echo "----------------------------------------------------------------------"
  done

done
