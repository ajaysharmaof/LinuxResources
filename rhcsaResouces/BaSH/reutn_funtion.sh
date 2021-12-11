#!/usr/bin/env bash
<< 'mycomm'
return_variable()
{
  local x=9
  return $x
}

return_variable
y=$?
echo "the value of y is:$y" #$? pervious comand output which is execution of function

mycomm

define_variable()
{
  local x=6
  echo "$x"
}

y=$(define_variable)
echo "the y value is: $y"
