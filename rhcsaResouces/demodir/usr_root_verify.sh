#!/bin/bash
#Simple shell scripts To verify the shell script running user is root or not

#userid=$(id -u)
#[[ $userid -eq 0 ]] && echo "you are root" || echo "you are not root"

#[[ $(id -u) -eq 0 ]] && echo "you are root" || echo "you are not root"

if [[ $(id -u) -eq 0 ]] 
then
       	echo "you are root"
else
	echo "you are not root"
fi
