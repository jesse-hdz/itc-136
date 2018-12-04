#!/bin/bash

printf "\n Please enter a file name: "
read fname

#find the file
filefound=$( readlink -f $fname )

#locate the file (sudo updatedb)
filelocated=$( locate *$fname* )

#whereis the file



#executable?
executablefile=$( ls -l $fname )

#printf "\n Please enter the path to check "
#read path2check


echo -en "\e[94m Your File: $executablefile
 Found: $filefound
 Location: $filelocated
 Whereis: $filewhereis
"


#if find $path2check -name $fname -print -quit |
   #grep -q '^'; then
  #echo "the file exists!"
#else
  #echo "the file does not exist!"
#fi
