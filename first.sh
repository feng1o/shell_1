#!/bin/bash
#program
#user: lf
#Histroy: 2016/03/03

PATH=/usr/lib/qt-3.3/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/arm-linux-gdb/bin:/usr/local/arm/4.3.2/bin:/usr/local/firefox/:/usr/local/python/bin/:/root/bin
exprot PATH

echo $?
set +H echo "welcome to linux !" #这个“”里面到！必须转\
echo welcome to linux ! #这个不用\
echo 'welcome to linux !' #这个“”里面到！必须转\

printf "%s -- %d--"first.sh  

#read only variable
var1="liufeng-var"
readonly var2
var2="test"
