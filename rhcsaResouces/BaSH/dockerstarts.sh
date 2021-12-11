#!/usr/bin/env bash
read -p "DO your wana start docker ? type yes or no " usrcnf
#if [ "$usrcnf" = "yes" ]
if [ $usrcnf = yes -o $usrcnf = y ]
#if [[ $usrcnf = yes || $usrcnf = y ]]

#if [[ $usrcnf =~ y|yes ]]
then
	echo "starting docker .."
	sudo systemctl start docker
else
	echo "skipping ..."
fi
