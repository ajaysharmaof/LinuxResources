#!/usr/bin/env bash

pwd
date
a=$(awk 'BEGIN { print "hii" }')
b=$(awk -f hii.awk)

echo "a value is: $a"
echo "b value is: $b"
