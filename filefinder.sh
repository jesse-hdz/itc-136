#!/bin/bash

printf "\n Please enter a file name "
read fname

#find the file
filefound=$( readlink -f $fname )

#locate the file


#whereis the file


#executable?
executablefile=$( awk '{ if ($fname == 8) { print } }' | head )

#printf "\n Please enter the path to check "
#read path2check


echo -en "\e[94m Your File: $executablefile
                 Found: $filefound

"


#if find $path2check -name $fname -print -quit |
   #grep -q '^'; then
  #echo "the file exists!"
#else
  #echo "the file does not exist!"
#fi
