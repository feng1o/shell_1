#!/bin/bash
#program
#test.fetch
#user: lf
#Histroy: 2016/03/03

PATH=/usr/lib/qt-3.3/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/arm-linux-gdb/bin:/usr/local/arm/4.3.2/bin:/usr/local/firefox/:/usr/local/python/bin/:/root/bin

# 设置颜色 \e[1;31m，，红色，\e[0m是默认恢复，
# 颜色码：40 黑色； 红色41，绿色42，黄色43，杨红45，白色47，青涩46


echo -e "\e[1;32m 蛋黄 颜色变了吗？\e[0m"
echo -e "\e[1;31m 红色 颜色变了吗？\e[0m"
echo -e "\e[1;35m 紫红 颜色变了吗？\e[0m"
echo -e "\e[1;36m lang 颜色变了吗？\e[0m"

echo "tr ..........."
cat  echo-color.sh | tr ':' '\n'
