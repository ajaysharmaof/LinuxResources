#!/usr/bin/env bash
#simple shell script to start docker service

if [[ $(id -u) -eq 0 ]] 1>/dev/null 2>/dev/null

then
	if systemctl status docker 1>/dev/null 2>/dev/null
	then
		echo "docker service already running and up"
	else
		echo "starting docker service.."
		systemctl start docker
		echo "successfully started docker service"
		fi

else

	if sudo -v 1>/dev/null 2>/dev/null
	then
		 if systemctl status docker 1>/dev/null 2>/dev/null
	         then
                	echo "docker service already running and up"
        	 else
                	echo "starting docker service.."
                	systemctl start docker
               		echo "successfully started docker service"
                 fi

	else
		 echo "sorry, you are not allowed to start docker service, because you are not root user"

	fi

fi

