#!/usr/bin/awk -f

BEGIN {
  print "Begin block statement execute only once a b for ab.txt"
}

{
a=$1
b=$2
print "a="a,"b="b
}

END {
  print "Complete reading a and b value in ab.txt. END also execute once. action execute on ecery line of file"
}
