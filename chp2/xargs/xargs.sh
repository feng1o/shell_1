#!/bin/bash
#program
#
#History:2016/03/23

PATH=/usr/lib/qt-3.3/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/arm-linux-gdb/bin:/usr/local/arm/4.3.2/bin:/usr/local/firefox/:/usr/local/python/bin/:/root/bin
#export $PAHT

echo "d多行变单行j cat multiline.txt | xargs "
cat multiline.txt
echo 
cat multiline.txt | xargs 

echo 
echo "单行变多行 cant xx | xargs -n 3"
cat multiline.txt | xargs -n 3

echo 
echo "定制分隔符 xargs -d x"
echo "abcxbcaxccdxb---xxxbbb" | xargs -d x
echo "abcxbcaxccdxb---xxxbbb" | xargs -d x -n 2

echo 
echo $*

echo -e "\e[1;36m 使用xargs提供stdin输入的参数，从文件读]"
cat  args.txt | xargs -n 1   ./args.sh

echo -e "\e[0m -n 3个参数]"
cat  args.txt | xargs -n 3   ./args.sh

echo 
echo -e "\e[1;33m xargs -I 选项，替换{} xargs -I {} ./xx argsx1 {} arsgx3 ]"
cat args.txt  | xargs -n 1 -I {} ./args.sh  arg^  {} arg# #args.txt有多少行就打印多少个循环替换 

echo 
echo -e "\e[1;32m 余find结合 -print0 xargs -0 xxxx,,,]"
find ./  -type f -print0 | xargs -0 cat -n

