#!/bin/bash

#Where did I put that file?: Write a script that utilizes locate, find, 
#whereis and which to determine the location of a lost file and whether 
#or not it is in the PATH, if it is an executable file.

printf "\n Please enter a file name to locate: "
read fname

#locate the file --------------------------------------------------------
filelocated=$( locate $fname )

#whereis the file -------------------------------------------------------
filewhereis=$( whereis $fname )

#which (executable file) ------------------------------------------------
filewhich=$( which -a $fname )

#executable?
#fileexecutable=$( -x "$fname" )

#find the file ----------------------------------------------------------
#[ ! -f "$fname" ]
#filefound=$( find . -name $fname )
#filefound=$( readlink -f $fname )

#finds files regardless of case "-iname"
if find . -iname '$fname'  
then
    echo -e "\e[44m     File '${fname}' is located at: ${filelocated} \e[0m"
    echo -e "\e[45m     '${fname}' is : ${filewhereis} "
         if which -a "$fname"  #$filewhich
         then
             echo -e "\e[42m     File '${fname}' is executable."
         else
             echo -e "\e[41m     File '${fname}' is not executable or found."
         fi
else
    echo -e "\e[41m     File '${fname}' not found. "
fi


#echo -en "\e[94m Your File: $executablefile
 #Found: $filefound
 #Location: $filelocated
 #Whereis: $filewhereis
#"
