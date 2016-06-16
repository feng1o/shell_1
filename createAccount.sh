#!/bin/bash

#program
#test.fetch
#user: lf
#Histroy: 2016/03/03

PATH=/usr/lib/qt-3.3/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/arm-linux-gdb/bin:/usr/local/arm/4.3.2/bin:/usr/local/firefox/:/usr/local/python/bin/:/root/bin
export $PATH

if [ -f account1 ]
then
    usernames=$( cat account1)
    for username in $usernames
    do
        useradd  $username  
        echo  $username  |    passwd --stdin ${username}
        chage -d  0 $username
    done
else 
    echo "note exit file account1"
    exit 1
fi
echo $?
