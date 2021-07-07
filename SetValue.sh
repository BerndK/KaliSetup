#!/bin/sh

echo "setting $2=$3 in file: $1"
if [ $# -ne 3 ]
then
  echo "usage: SetValue.sh filename name value"
else
  sed -i "/^$2=/{h;s/=.*/=$3/};\${x;/^$/{s//$2=$3/;H};x}" $1
fi