#!/usr/bin/env bash
#get git version from offical website

which wget 1>/dev/null 2>/dev/null	#check wget success 0 $? result 0 else false !=0
if [ $? -ne 0 ]
then
  echo "Please install wget and retry"
  exit 1
fi
if [ -e "index.html" ]   #->if this file index.html there or exist maybe old file. then remove from current location
then
  echo "Removing old index.html file"
  rm -rf index.html
fi

url="https://mirrors.edge.kernel.org/pub/software/scm/git/"
wget $url
if [ $? -ne 0 ]
then
  echo "unable to download git info from $url"
  exit 2
fi

echo "*******************please wait collecting all git version from offical git-scm webiste*************"
declare -a git_vers
while read line
do
  #echo $line | sed -n '/git-[0-9]\+\./p'
  #echo $line | grep "tar.gz"    #it will get other tar.gz file like git-manage page
  #sleep 1

  #echo $line | sed -n '/git-\([0-9]\+\.\)\+tar.gz/p' # ->get tar.gz files only
  #echo $line | sed -n '/git-\([0-9]\+\.\)\+tar.gz/p' | awk -F '"' '{ print $2 }' #print 2nd field seprated  "" <a href="git-2.4.1.tar.gz">git-2.4.1.tar.gz</a> lines

  git_vers+=($(echo $line | sed -n '/git-\([0-9]\+\.\)\+tar.gz/p' | awk -F '"' '{ print $2 }' | cut -c 5- | awk -F '.tar.gz' '{ print $1 }'))


done < index.html

echo "The all available git version are: "
#echo "${git_vers[*]}"

cnt=0
no_vers=${#git_vers[*]}
WIDTH=10

for each_ver in ${git_vers[*]}
do
  #echo -e "\t\t ${git_vers[$cnt]} \\t ${git_vers[$((cnt+1))]} \\t  ${git_vers[$((cnt+2))]}"
  
 # *->means to print width size ,"-" ->means print left to right
  
 printf "%-*s %-*s %-*s %-*s %-*s %-*s\n" $WIDTH ${git_vers[$cnt]} $WIDTH ${git_vers[$((cnt+1))]} $WIDTH ${git_vers[$((cnt+2))]} $WIDTH ${git_vers[$((cnt+3))]} $WIDTH ${git_vers[$((cnt+4))]} $WIDTH ${git_vers[$((cnt+5))]}
  cnt=$((cnt+6))
  if [ $cnt -ge $no_vers ]
  then
    break
  fi
done


#echo "no. of git version=$no_vers"
