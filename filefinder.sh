#!/bin/bash

#Where did I put that file?: Write a script that utilizes locate, find, 
#whereis and which to determine the location of a lost file and whether 
#or not it is in the PATH, if it is an executable file.

printf "\n Please enter a file name to locate: "
read fname

#find the file ----------------------------------------------------------
#[ ! -f "$fname" ]
#filefound=$( find . -name $fname )
#filefound=$( readlink -f $fname )

#finds files regardless of case "-iname"
if [[ find / -iname "$fname" ]] 
then
    echo "$0: File '${fname}' is located at: $filelocated"
    echo "$0: '${fname}' is : $filewhereis"
         if [[ -x "$fname" ]] #$filewhich
         then
             echo "$0: File '$fname' is executable."
         else
             echo "$0: File '$fname' is not executable or found."
         fi
else
    echo "$0: File '${fname}' not found."
fi

#locate the file --------------------------------------------------------
filelocated=$( locate $fname )

#whereis the file -------------------------------------------------------
filewhereis=$( whereis $fname )

#which (executable file) ------------------------------------------------
filewhich=$( which -a $fname )

#executable?
#fileexecutable=$( -x "$fname" )

echo -en "\e[94m Your File: $executablefile
 Found: $filefound
 Location: $filelocated
 Whereis: $filewhereis
"
