#!/bin/bash

#which docker && { echo "Docker is installed on this host" ; echo "The docker version is: $(docker -v)"; }
<< 'mycommentt'
if which docker 2>/dev/null 1>/dev/null
then
	echo " Docker is installed on this host" 
	echo " the Docker version is: $(docker -v)"
fi

which docker 2>&1 1>/dev/null
if [[ $? -eq 0 ]]
then
	echo " Docker is installed on this host" 
 	echo " the Docker version is: $(docker -v)"
fi


if true
then
	echo "Always this will execute"
fi

if false
then
	echo "It won't execute"
fi
mycommentt
#which apache2 2>&1 1>/dev/null && { echo "Apache is installed" ; echo "apache version info is: $(apache2 -v)" ; } || echo "apache is not installed"

if which apache2 2>&1 1>/dev/null
then
	echo "Apache is installed"
	echo "Apache version is : $(apache2 -v)"
else
	echo "apache is not installed"
fi
