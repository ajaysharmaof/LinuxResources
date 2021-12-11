#!/bin/bash

docker_status=$(systemctl status docker | awk '/Active/ { print $3}' | tr -d "[()]")
docker_version=$(docker -v | awk '/version/ { print $3 }' | tr -d ",")

echo " Docker Status -> $docker_status"
echo " Docker Version -> $docker_version"
