#!/bin/bash
echo 
echo "by -lf"
echo '通配符*和正则表达式区别：'

grep -n 'gooo*' --color=auto regular_express
grep -n 'g..d' --color=auto regular_express
grep -n 'goo*g' --color=auto regular_express
grep -n 'g.*g' --color=auto regular_express # 只能有一个字符 在GG之间

echo "限定字符个数{}转义。。。。"
grep -n 'go\{2\}g' --color=auto regular_express
grep -n 'go\{2,5\}g' --color=auto regular_express
grep -n 'go\{2,\}g' --color=auto regular_express  # 2,n之间不能有空格

echo '找出etc目录下，属性为链接的文件，，因为文件属性是第一个字符，所以 ^l就是了。。。。。'
ls -l /etc/ | grep '^l' 
