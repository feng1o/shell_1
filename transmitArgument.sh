#!/bin/bash
#program
#user: lf
#Histroy: 2016/03/03

PATH=/usr/lib/qt-3.3/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/arm-linux-gdb/bin:/usr/local/arm/4.3.2/bin:/usr/local/firefox/:/usr/local/python/bin/:/root/bin
exprot PATH

echo $?
echo "Shell 传递参数实例！";
echo "第一个参数为：$1";
echo "第二个参数为：$2";
echo "第三个参数为：$3";
echo ' '
echo "第一个参数为：$1";

echo "参数个数为：$#";
echo "传递的参数作为一个字符串显示：$*";
echo "$$    脚本运行的当前进程ID号"
echo "$!   \$! 后台运行的最后一个进程的ID号"
echo "$@   \$@ 与\$*相同，但是使用时加引号，并在引号中返回每个参数。"
echo "$-    显示Shell使用的当前选项，与set命令功能相同。"
echo "$?    显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误。"
