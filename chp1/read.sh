#!/bin/bash
#test
#time:
#by:lf

echo "read ...."
read -s  var1
echo $var1

echo "read -p  var2 "
read -p "read2:" var2
echo $var2

echo "read -n 2 var3  输入12，读取就是1212"
read -n 2 var3
echo $var3

echo "read delim_charter 一直到遇到你设定结束符位置"
read -d "," var4
echo $var4
