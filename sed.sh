#!/bin/bash
echo
echo "sed .........................."
nl /etc/passwd | sed '2,5d' # 打印，删除2-5行的数据 
nl /etc/passwd | sed '2,$d' # 打印，删除2-以后的，￥代表最后行

echo
echo "sed .........................."
nl /etc/passwd | sed '2a -by--lf'  # 从第二行后面加上;一行  -by--lf 
nl /etc/passwd | sed '2i -by--lf'  # 从第二行前面加上;一行  -by--lf 
nl /etc/passwd | sed '2a -...... \
>第二行.....: \
>第三行了：'  # 从第二行后面加上;一行,多行，，这的\,>都不可少，不可有空格的，，\后 -by--lf 

echo
echo "sed c替换内容.........................."
nl /etc/passwd | sed '2,5c  替换2-5行'  # 替换2-5行尾这一行

echo '打印n1 -n2行，，head -n n1 | tail -n n2'
nl /etc/passwd | sed -n '2,5p'  #打印 2-5行xx

echo 
echo 
#查找替换部分内容，非行 sed 's/old/new/g'
/sbin/ifconfig eth0 
/sbin/ifconfig eth0 | grep 'inet addr'
echo 
echo '删除前的x'
/sbin/ifconfig eth0 | grep 'inet addr' |  sed 's/^.*addr://g'  #这里是把前面的部分删除，替换//了，
/sbin/ifconfig eth0 | grep 'inet addr' |  sed 's/^.*addr://g' | sed  's/Bcast.*$//g'  #这里是把前面的部分删除，替换//了，


#和正则表达式结合kk
echo 
echo ''
nl /etc/man.config  | grep 'MAN' | sed 's/#.*$//g'  #出现空白航，下面删除
nl /etc/man.config  | grep 'MAN' | sed 's/#.*$//g' | sed '/^$/d'  #出现空白航，下面删除

echo "还可以修改文件内容比如，替换行尾的.为！"
sed -i 's/\.$/\!/g'   regular_express2   # 把行尾的.改为 ！ 
sed -i  '$a # this is a test sed add -lf' regular_express2  # 在最后一行加上 # this is .....
