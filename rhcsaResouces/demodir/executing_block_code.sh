#!/bin/bash


#{ ls;pwd;date; }
#which docker && { echo "Docker is installed on this host" ; echo "The docker version is: $(docker -v)"; }

#2>&1 - redirecting standard erros on standard output
#1>/dev/null -redirecting standard output to nullify
which apache2 2>&1 1>/dev/null && { echo "Apache is installed" ; echo "apache version info is: $(apache2 -v)" ; } || echo "apache is not installed"
