#!/usr/bin/env bash


if [[ $# -ne 2 ]]   #check commadn line argument not equals to 2 $0->shell script name
then
	echo "Hey admin, please run this script as follows"
	echo "Usage: $0 <servicename> <ActionToExecuteonService>"
	echo "Valid Action to Execute on service are: start stop restart status"
	exit 1
fi

#read -p "Enter your service to execute your action on it: " servicename
#read -p "Enter your action to exeecute on your service: $servicename " action
servicename=$1
action=$2
sudo systemctl $action ${servicename}
#actionondocer.sh nginx status
