#!/bin/bash
#program
#user: lf
#Histroy: 2016/03/03

PATH=/usr/lib/qt-3.3/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/arm-linux-gdb/bin:/usr/local/arm/4.3.2/bin:/usr/local/firefox/:/usr/local/python/bin/:/root/bin
exprot PATH

echo $?
echo "输入输出重定向"
echo ""

ls > ls.txt
cat ls.txt

wc < ls.txt # 统计多少行

# here document
cat << eof
测试here
测试here2
eof

printf "here document测试.\n"
wc -l << xx
line-8
line2
xx

# /dev/null 文件
#如果希望执行某个命令，但又不希望在屏幕上显示输出结果，那么可以将输出重定向到 /dev/null：

ls > /dev/null
cat /dev/null
