#!/usr/bin/env sh

path=`echo $PATH | sed -e 's/:/ /g'`

for i in $path
do
  if [ -f $i/$1 ]
    then ls -lh $i/$1
  fi
done
