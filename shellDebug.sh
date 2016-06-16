#!/bin/bash
#program
#test.fetch
#user: lf
#Histroy: 2016/03/03

PATH=/usr/lib/qt-3.3/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/arm-linux-gdb/bin:/usr/local/arm/4.3.2/bin:/usr/local/firefox/:/usr/local/python/bin/:/root/bin
exprot PATH

for x in  {1..10}
do 
    # 在set之间的才会打印
    set -x   #启动debug
    echo $x
    set +x   #禁止debug
done
echo 'executed '
    
