#!/usr/bin/env bash
#Automate Servers Inventory using Shell script(Inventory result into csv file)
print_header(){
  printf "#%0.s" $(seq 1 $(tput cols))
  printf "\n"
}

center_msg(){
  msg=$1
  terminalcol=$(tput cols)
  msg_len=$(echo ${#1})		#finding length of message
  pre_space=$(($((terminalcol-msg_len))/2))
  
  print_header
  printf " %0.s" $(seq 1 $pre_space)
  printf "%s" "$1"
  printf "\n"
  print_header
  
}
check_remotepass(){
  if [ ! -e "remotepass" ]   #if remotepaas doesn't exist -e for file check
  then
    center_msg "Please store your password in >>remotepass<<file and retry"
    exit 1
  fi
}

check_remoteuser(){
  if [ ! -e "remoteuser" ]
  then
    center_msg "please store your remote user name in >>remoteuser<< file and retry"
    exit 2
  fi
}

check_list_of_servers(){
  
  if [ ! -e "list_of_servers" ] 
  then
    center_msg "please update the >>list_of_servver<< with all your ips/FQDN names of remote server"
    exit 3
    fi
}
center_msg "welcome to Inventory script"

check_remotepass
check_remoteuser
check_list_of_servers

ssh_opt="sshpass -f remotepass ssh -n -o StrictHostKeyChecking=No -o PubKeyAuthentication=No ajay"


echo "Server_Name,OS_TYPE,OS_VERSION,ARC_TYPE,CPU_TYPE" > SERVER_INFO.csv
while read server
do
  echo "Working on $server"
  OS_TYPE=$($ssh_opt@$server "cat /etc/os-release" | grep -w "NAME=" | awk -F "NAME=" '{print $2}' | tr '"' " ")
  echo "$OS_TYPE" | grep -i "Debian" 1>/dev/null 2>&1
  
  if [ $? -eq 0 ]
  then
    OS_VERSION=$($ssh_opt@$server "cat /etc/os-release"| grep -w "VERSION_ID=" | awk -F "VERSION_ID=" '{print $2}' | tr '"' " ")
  else
    OS_VERSION=$($ssh_opt@$server "cat /etc/redhat-release" | awk -F "release" '{print $2}')  
  fi
  
  ARC_TYPE=$($ssh_opt@$server "uname -m")
  CPU_TYPE=$($ssh_opt@$server "cat /proc/cpuinfo" | grep "model name" |awk -F ":" 'NR==1{ print $2 }')
  echo "OS Type=$OS_TYPE"
  echo "OS Version=$OS_VERSION"
  echo "Architure Type=$ARC_TYPE"
  echo -e "CPU type=$CPU_TYPE \n"

  echo "$server,$OS_TYPE,$OS_VERSION,$ARC_TYPE,$CPU_TYPE" >> SERVER_INFO.csv
done < list_of_servers

center_msg "Thank you for using this shell script"


