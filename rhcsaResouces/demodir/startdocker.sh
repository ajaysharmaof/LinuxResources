#!/usr/bin/env bash

if systemctl status docker 1>/dev/null 2>/dev/null
then
	echo "Already Docker is up and running"
else
	echo "Starting Docker service"
	systemctl start docker
	echo "Successfully started docker service"
fi
