#!/bin/bash

server_ip=0.0.0.0 # This is an example, change this to your server ip
server_status=1
while [ $server_status -eq 1 ]    # "-eq" is a comparison operator. it is used when comparing integers.
do
        ping -c 1 -w 1 $server_ip > /dev/null    # ping once, if not work wait 1 second. ("> /dev/null" means clearing the command output.)
        if [ $? -eq 0 ] ; then    # $? means the return value of the previously executed command 
                echo "Communication Success"
                server_status=0
        else
                echo "Communication Failed"
        fi
done

echo "Execute Next Command"
