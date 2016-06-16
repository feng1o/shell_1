#!/bin/bash
#program
#user: lf
#Histroy: 2016/03/03

PATH=/usr/lib/qt-3.3/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/arm-linux-gdb/bin:/usr/local/arm/4.3.2/bin:/usr/local/firefox/:/usr/local/python/bin/:/root/bin
export  $PATH

echo $?
array=(1 2 'abc' ' liufeng');
array[2]="2222222222222222"
echo $array
echo "data 2= ${array[0]}"

# 关联数组
declare  -A  aso_array
aso_array=([liu]='xing', [feng]='mign') # 赋值方法,j
echo ${aso_array[liu]}
echo ${aso_array[feng]}  # 直接赋值

# 列出数组索引o
echo ${!aso_array[@]}



aso_array[xx]='1244444444444444444444444'
aso_array[124]='123412341234,,,,,,,,,,'
echo ${aso_array[xx]}
echo ${aso_array[124]}
# 列出数组索引o
echo ${!aso_array[*]}
