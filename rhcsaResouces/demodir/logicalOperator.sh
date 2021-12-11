#!/usr/bin/env bash

<< logicaland
read -p "Enter your number: " num

#if [[ $num -ge 50 ]] && [[ $num -le 100 ]]
#if [[ $num -ge 50 && $num -le 100 ]]

if [ $num -ge 50 -a $num -le 100 ]
then
	echo "$num is in the range of 50-100"
else
	echo "$num is not in the range of 50-100"
fi

logicaland

read -p "Enter your confirmation to start docker:(type yes or no ) " cnf

#if [[ $cnf == "yes" ]] || [[ $cnf == "y" ]] 
if [ $cnf == "yes" || $cnf == "y" ]
then
	echo "starting docker .."
	systemctl start docker
else
	echo "skipping .."
fi
