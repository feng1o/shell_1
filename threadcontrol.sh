#!/bin/bash
#program
#user: lf
#Histroy: 2016/03/03

PATH=/usr/lib/qt-3.3/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/arm-linux-gdb/bin:/usr/local/arm/4.3.2/bin:/usr/local/firefox/:/usr/local/python/bin/:/root/bin
exprot PATH

echo $?
a=10
b=20
c=`expr $a + $b `
d=$a  
echo "c $c, d= $d"
str1="abc"
str2='def'

if test $[a] -eq $[b]  # 和使用[] 
then
    echo "eq, lt"
else 
    echo "ne"
fi

# for
for var in 1 2 3 4 5 
    do
        echo "jieguo = $var "
done

for ch in "abcde"
do
    echo "$ch"
done 
for (( i = 4 ; i < 10 ; i = i + 1))
do
    echo  'akbn' $i
done 

i=1
while (($i < 5))  # 必须2个括号！！！
do
    printf "i=%5d\n"  $i
    let "i++"
done
# while 读取键盘
while read -p "请输入:" -t 2  keyboard
do
    echo  $keyboard
    break
done

# 无线循环 while true ,for(())
while :
do
    echo " while :"
    break
done 
while true
do
    echo " true"
    break
done

# unitl
i=0
until [ $i == 4 ]  
do
    let "i++"
    printf "i=%3d" $i
done 

#case
printf "case输入一个数 \n"
read inum
case $inum in
    # 1|2|3|4)   
    1|2)  echo '你选择了 1'
    ;;
    2)  echo '你选择了 2'
    ;;
    3)  echo '你选择了 3'
    ;;
    4)  echo '你选择了 4'
    ;;
    *)  echo '你没有输入 1 到 4 之间的数字'
    ;;
esac 
