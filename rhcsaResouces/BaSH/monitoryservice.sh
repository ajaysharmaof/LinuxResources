#!/usr/bin/env bash

myservice=(docker nginx)
for eachservice in ${myservice[@]}
do
  systemctl status $eachservice 1>/dev/null 2>/dev/null
  if [[ $? -ne 0 ]]	#previous command success 0=yes
  then
    echo "the service $eachservice is not running"
    echo "the service $eachservice is not running on $(hostname -s)" | /usr/bin/mail -s "status of $eachservice" "ajaysharmaof@gmail.com"
  fi
done

#crontab -e
#check fo service in every 1 minute
#* * * * * /home/ajay/Desktop/Bash/monioryservices.sh

