#!/usr/bin/env bash
#Monitor File system usage and send mail alerts

file_usage_thr=70
rm -rf file_sys_info.txt
df -Ph | grep -vE "Filesysystem|udev|tmpfs|sr0|Filesystem" | while read line
do
#echo "$line"
  filesystem_name=$(echo $line | awk '{ print $1 }')
  filesystem_usage=$(echo $line | awk '{ print $5 }' | sed 's/%//g') 
  echo "FileSystem Name: $filesystem_name,FIleSystem Usage: $filesystem_usage" 
  
  if [ $filesystem_usage -gt $file_usage_thr ]
  then
    echo "$filesystem_name: $filesystem_usage" >> file_sys_info.txt
  fi
done


content=$(cat file_sys_info.txt | wc -l)
if [ $content -gt 0 ]
then
  echo "Some file system usage is more than threshold"
  #cat file_sys_info.txt
  echo -e "Subject:Alert\n\n $(cat file_sys_info.txt)\n" | /usr/sbin/sendmail ajaysharmaof@gmail.com
fi

#crontab -e ->* * * * * /usr/bin/bash  /home/ajay/Desktop/BaSH/index/monitor_file_system.sh

