#!/usr/bin/env bash
#send a mail automaticaly when ram size get low
TO="ajaysharmaof@gmail.com"
free_Ram=$(free -mt | grep -E "Total" | awk '{print $4}')
TH_Limit=700
if [[ $TH_Limit -gt free_Ram ]]
then
	echo -e "Server is running with low Ram Size\n Available Rame is: $free_Ram" | /usr/bin/mail -s "Ram Info $(date)" $TO
	
fi
#trigger for every minute
# * * * * * /bin/bash /home/ajay/Desktop/Bash/send_au_mail_alert.sh
# */30 * * * *  -> check for every 30 minute
