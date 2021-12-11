#!/usr/bin/env bash
Server_Name=$(uname -n)
Ip_Address=$(ifconfig | grep inet | awk 'NR==1{print $2}')
Os_Type=$(uname)
Uptime=$(uptime -p | awk -F ',' '{print $1 $2 $3 }' | sed 's/up//')

#Creating Headin in csv file
echo "S_No,Server_Name,Ip_Address,Os_Type,Uptime" > server_info.csv
echo "1,$Server_Name,$Ip_Address,$Os_Type,$Uptime" >> server_info.csv
