#!/bin/bash

#program:creat file+current time ;;;;
#user: lf
#Histroy: 2016/03/03

PATH=/usr/lib/qt-3.3/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/arm-linux-gdb/bin:/usr/local/arm/4.3.2/bin:/usr/local/firefox/:/usr/local/python/bin/:/root/bin
exprot PATH

echo "use touch creat  file :"
read -p "input filename : " filename2 -t 5
filename=${filename2:-"filename"}  # 看有没有输入文件名字

#date 
date1=$(date --date='2 days ago' +%Y%m%d)  #前两天的日期
date2=$(date --date='1 days ago' +%Y%m%d)  #前两天的日期
date3=$(date +%Y%m%d)
file1=${filename}${date1} 
file2=${filename}${date2} 
file3=${filename}${date3} 

touch "${file1}"
touch "${file2}"
touch "${file3}"
echo $?
