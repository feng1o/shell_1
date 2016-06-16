#!/bin/bash
clear
echo "书本135......."


echo 'awk。。。。。。。。。。'
last -n 5 | awk '{printf $1 "\t" $3"\n"}' # 一行行读取，然后安装参数u，读取列1,3，￥0表示一行数据，，，
last -n 5 | awk '{printf $1 "\t lines: " NR "\t colums: " NF "\n"}' #NR是awk当前处理的行，NF是列，，这里面不需要￥

echo 'awk；逻辑运算符'
#FS就是分隔符，改变分隔符为：，默认是tab空格，这里虽然改了，但是第一行没改
#需要使用BEGIN
cat /etc/passwd  | \
    awk '{FS=":"} $3 < 10 {printf $1 "\t" $3 "\n"}' #第一行没起作用，
echo
echo "使用了BEGIN {NF=":"}"
cat /etc/passwd  | \
    awk 'BEGIN {FS=":"} $3 < 10 {printf $1 "\t" $3 "\n"}'

#awk作为计算
cat numtoawk | \
    awk 'NR==1 {printf "%8s %8s %8s %8s %8s\n" , $1,$2, $3,$4,"total"}
NR>=2 {total = $2 + $3 + $4 
printf "%8s %8d %8d %8d %8d\n",$1, $2, $3, $4, total}'

