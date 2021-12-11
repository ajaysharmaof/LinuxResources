#!/bin/bash
<< mycomment
echo "$0"   #display name of file
echo "$1"	#display 1 argument
echo "$2"
echo "$3"
echo "${10}"	#->display 10th argument
mycomment
echo "total passed argument count in shell script: $#"

echo "display all command line argument: $*"
#	or same both
echo "display all command line argument: $@"

#./cmd_arg.sh
#./cmd_arg.sh 12 23 32 23 "shell script" fds r32 f

