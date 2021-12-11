#!/usr/bin/env bash

#script to start, stop and restar Docker also find the veson of docker


if [[ $(id -u) -ne 0 ]] #allow only root user to execute the script
then
	echo "You are not allowed to run this script"
	exit 1
fi

read -p "Ente your option : " option

if [[ $option == start ]]
then
	echo "starting docker .."
	systemctl start docker
	echo "docker is up and running"
elif [[ $option == stop ]]
then
	echo "Stopping docker .."
	systemctl stop docker
elif [[ $option == restart ]]
then
	echo "restarting docker.."
	systemctl restart docker
elif [[ $option == version ]]
then
	version=$(docker -v | cut -d " " -f 3 | tr -d ",")
	echo "The version of docker is: $version"
else 
	echo "your Option is invalid"
	echo "valid options are: start, stop restart and version"
fi

