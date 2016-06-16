#!/bin/bash
#program
#
#History:2016/03/23

#PATH=/usr/lib/qt-3.3/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/arm-linux-gdb/bin:/usr/local/arm/4.3.2/bin:/usr/local/firefox/:/usr/local/python/bin/:/root/bin
#export $PAHT

echo "打印文件和目录列表find . -print"
find . -print
find /etc/sysconfig  -print | sed -n '3,5p' 

echo "find /pass  -[i]name "*.txt" -print"
find /etc/ -name "*[d]" -print | sed -n '1,2p'

echo "找两个名字的，这个是()作为了一个整体"
find /etc/ \( -name "sysconfig" -o -name xinetd \) -print

echo 
echo "regex 正则表达式,找两个后缀名字"
find . -regex ".*\(\.txt\|\.sh\)$"   # import

echo "find . ! -name *.sh"
find . ! -name '*.sh'  -print
# find . ! -name "*.sh"  -print

echo " 基于目录深度的搜索 -maxdepth n  ,mindepth n"
find /home/liufeng  -maxdepth 1 -name "test" -print
find /home/liufeng -mindepth 2  -name  "test"  -print

echo 
echo "根据类型艘文件  -type d f s l b c p "
find /home/liufeng/ -type l   -print
find /home/liufeng/ -type p   -print

echo 
echo "更具时间 atime ctime mtime +- n天"
find /home/shell_1/  -type f -atime  -5   -print
find /home/shell_1/  -maxdepth 2  -type f -atime  -2   -print

echo "更具时间 amin cmin mmin -+n 分钟"
find /home/shell_1/ -cmin -2 -print

echo 
echo "比某个文件新的文件 -newer "
find /home/shell_1/ -type f -newer  cmd  -print 

echo 
echo "文件大小 -size +-nk/M/G/w/c/b"
find /home/backup_liufeng   -type f -size +2k

echo 
echo "删除匹配 文件 -delete"
find /home/apue-my/ipc-chp15  -type f -name "a.out" -delete

echo 
echo "文件权限 搜 -perm 662 "
find /home/ -maxdepth 5  -atime +1 -type d -perm 777 -print
echo 
echo "-user 找"
find /home/ -maxdepth 2  -atime +1  -user win8  -print

echo 
echo -e "\e[1;32m find结合-exec {}\;,,\e[0m"
find ./ -atime +2  -type f  -exec cat {} \; > execcat.txt
find ./ -name cmd    -exec cp  {} execcp \;

echo -e "\e[1;35m printf结合，，，，%s,,,,hen \e[0m"
find ./ -type f  -exec printf "找文件%s\n" {} \;

echo -e "\e[1;36m 跳过特定目录 -name dirname -prune  \e[0m ]]"
find /home/shell_1/chp2 -maxdepth 2 \( -name "cmd*" -prune \) -o \( -type f -print \)









