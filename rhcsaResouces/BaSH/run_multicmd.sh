#!/usr/bin/env bash

#password less authentication

#for each_server in 192.168.0.12
for each_server in $(cat remote_server_list.txt)
do
  echo "Executing cmds on $each_server"
  echo "=============================="
  for each_cmd in date uptime "free -m"
  do
    echo "The $each_cmd command output on server: $each_server"
    #sshpass -f passfile ssh -o StrictHostKeyChecking=No ajay@$each_server "$each_cmd"
    ssh -o StrictHostKeyChecking=No ajay@$each_server "$each_cmd"
    echo "----------------------------------------------------------------------"
  done

done

