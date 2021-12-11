#!/usr/bin/env bash
#Bash shell script to monitor Disk Space usage with wmail alert

MailId="ajaysharmaof@gmail.com"

echo -e "The file system utilization on $(hostname -s) is: \n $(df -h | grep -Ev "tmpfs|devtmpfs")" | /usr/bin/mail -s "Disk usages info:" "$MailId"

#crontab -e->0 9 * * * /home/ajay/desktop/BaSh/diskusagemonitor.sh
#every day 9 am
