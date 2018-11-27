#!/bin/bash

printf "\n Please enter a file name "
read fname

#find the file
filefound=$( readlink -f $fname )

#printf "\n Please enter the path to check "
#read path2check


echo -en "\e[94m Your File is here: $filefound"


#if find $path2check -name $fname -print -quit |
   #grep -q '^'; then
  #echo "the file exists!"
#else
  #echo "the file does not exist!"
#fi
