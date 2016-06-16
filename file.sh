#!/bin/bash
#program
#test.fetch
#user: lf
#Histroy: 2016/03/03

PATH=/usr/lib/qt-3.3/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/arm-linux-gdb/bin:/usr/local/arm/4.3.2/bin:/usr/local/firefox/:/usr/local/python/bin/:/root/bin
exprot PATH

echo $?

chmod a+x echoPrintf.sh
. ./echoPrintf.sh   # file获取.后面有个空格 
chmod +x variable.sh
source ./variable.sh  # 获取file
