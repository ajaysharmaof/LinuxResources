#!/bin/bash
DockerVersion=$(docker -v | cut -d " " -f 3 | tr "," " ")
OsName=$(uname)
NginxVersion= $(nginx -v 2>&1 | cut -d " " -f 3 | cut -d "/" -f 2)
cat <<EOF | /usr/bin/mail -s "$(date '+%d_%m_%Y'): Report on $(hostname)" "ajaysharmaof@gmail.com"
Nginx : $NginxVersion
Docker Version: $DockerVersion
Os Uname: $OsName
EOF
