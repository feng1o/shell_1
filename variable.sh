#!/bin/bash
#program
#user: lf
#Histroy: 2016/03/03

PATH=/usr/lib/qt-3.3/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/arm-linux-gdb/bin:/usr/local/arm/4.3.2/bin:/usr/local/firefox/:/usr/local/python/bin/:/root/bin
exprot PATH

echo $?
your_name="qinjx,,,name"
echo `expr index "$your_name"  name`
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting $greeting_1
#for file in `ls /etc`
#只读变量
myUrl="http://www.w3cschool.cc"
#readonly myUrl # 后面不能操作里，否则停止
myUrl="http://www.runoob.com"
#删除变量l
myUrl="http://www.runoob.com"
unset myUrl
echo $myUrl
#字符串表示，拼接
your_name='qinjx'
str="Hello, I know your are \"$your_name\"字符串表示双单引号 \n"
echo ${str}
your_name="qinjx"
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting $greeting_1
#字符串长o度
string="abcd"
echo ${#string} #输出 4
#字符串查找
string="alibaba is a great company"
echo `expr index "$string" is`
#字符 提取
string="alibaba is a great company"
echo ${string:1:4} #输出liba
echo "............数组..."

#数组
#arra[]={1,2,3,4,5,6,7}
arra=(1 2 3 4 5 6 7)
echo ${arra[@]} #arra[*]也ok
echo ${arra[1]}
#数组长度
printf "数组长度  "
length=${#arra[@]}
echo ${length}
echo ${#arra[*]}
#读数组
arrnum_n=${arra[2]}
echo $arrnum_n
your_name="qinjx"
echo $your_name
echo ${your_name} #这个好点
for skill in Ada Coffe Action Java do
    echo  "I am good at ${skill}Script"
done
echo `date`
