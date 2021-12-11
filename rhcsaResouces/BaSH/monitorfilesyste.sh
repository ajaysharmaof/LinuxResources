#!/usr/bin/env bash
#Bash Shell script to monitor Disk Space Usage with email alert

emailId="ajaysharmaof@gmail.com"
FSUtilization=$(df -h | grep /dev/mapper/cl-root | awk '{print$5}' | sed 's/%//')

if [[ $FSUtilization -ge 80 ]]
then
	echo "the file system /dev/mapper/cl-root usage is $FSUtilization" | /usr/bin/mail -s "File system utilization alert" "$emailId"
fi
#monitoring a file system usage for every 10 minute
# */10 * * * * /home/ajay/Desktop/Bash/moniorfilsystem.sh

