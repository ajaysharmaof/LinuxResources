#/usr/bin/env bash
#shell script to install vim,httpd,nginx packages
#which nginx

if [[ $# -eq 0 ]]	#$# is count command line argument
then
  echo "Usage Syntax: $0 pkg1 pkg2 pkg3..."
  exit 1
fi


if [[ $(id -u) -ne 0 ]]
then
  echo "Please run from root user or with sudo privileges"
  exit 2		#error 2 when script fail 
fi

#for each_pkg in vim httpd nginx
for each_pkg in $@    #what parament passed cmd line argument place at $@ get cmd line argument
do
  #echo "current pkg: $each_pkg"
  if which $each_pkg &> /dev/null	#sending out and error to /dev/null
  then
    echo "$each_pkg package is already installed"
  else
    echo "Installing $each_pkg.."	#which vim ->echo $# ->1 package not installed
    yum install $each_pkg -y &> /dev/null  # or select || also 1st command fail run 3rd part
    if [[ $? -eq 0 ]]  #$?=0 privious command sucessfull 0=yes install sucess
    then
      echo "successfully installed $each_pkg pkg"
    else
      echo "Unable to install $each_pkg pkg"
    fi
  fi

done

#sudo ./install_multi_package.sh vim nginx httpd


<< 'mycomm'
if which nginx &> /dev/null	#sending out and error to /dev/null
then
  echo "Already vim is installed"
else
  echo "Installing vim.."	#which vim ->echo $# ->1 package not installed
  yum install nginx -y &> /dev/null  # or select || also 1st command fail run 3rd part
  if [[ $? -eq 0 ]]  #$?=0 privious command sucess install sucess
  then
    echo "successfully installed vim pkg"
  else
    echo "Unable to install vim pkg"
  fi
fi

mycomm
