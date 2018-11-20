#!/bin/bash

#how much disk space has been used
diskused=$( df -h | grep "/dev/sda1" | awk '{print $5}' )

#how much memory is free (available memory)
freemem=$( free -mh | grep Mem: | awk '{print $7}' )

#how many connections there are to the current machine
connections=$( netstat | grep tcp )

#who is logged in
users=$( who )

echo -en "\e[94m This is a snapshot of your current system:

                \e[92m Disk Used: $diskused
                
                \e[92m Free Memory: $freemem
                
                \e[92m Logged In Users: $users
                
\e[104m Open Internet Connections:
$connections
"

echo -en" 
color info:
http://misc.flogisoft.com/bash/tip_colors_formatting
http://wiki.bash-hackers.org/scripting/style
https://help.ubuntu.com/community/UnityLaunchersAndDesktopFiles
\e[39m
"
