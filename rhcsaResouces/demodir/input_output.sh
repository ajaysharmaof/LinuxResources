#!/bin/bash
<< mycomment
read -p "Enter your small letter string: "  my_name
name_upper=${my_name^^}
echo "name in upper case $name_upper"
mycomment

read -p "Enter your name:"
echo "$REPLY"
