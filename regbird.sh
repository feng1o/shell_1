#!/bin/bash
echo "grep -i v An Bn  "
grep -n --color=auto  'the' regular_express
grep -n  -A1 -B2 --color=auto  'the' regular_express
grep -n --color=auto  'the' regular_express
grep -in --color=auto  'the' regular_express


printf "\n v reverse display \n\n "
grep -vn --color=auto  'the' regular_express

grep -n 't[ae]st' --color=auto  regular_express

# echo "第二个字母不所a到所有组合、"
echo 
echo "第二个字母不所a到所有组合、"
grep -n 't[^a]st' --color=auto  regular_express
echo
echo "不是消协字母开头的带00的组合"
grep -n '[^a-z]oo' --color=auto  regular_express
grep -n '[1-9]' --color=auto  regular_express

# '[:lower""]' 
echo 
echo "[:num:]判定大小写，字母，字符等"
grep -n '[^[:lower:]]' --color=auto  regular_express
grep -n '[[:digit:]]' --color=auto  regular_express

#行首部，尾部 ^$
echo
echo '行首部，尾部 ^$'
grep -n '^the' --color=auto regular_express
grep -n '^[a-z]' --color=auto regular_express

echo "测试[:digit:]少个[]情况; 不可少[][]2个，，，，，"
grep -n '^[[:lower:]]' --color=auto  regular_express
echo

echo " 开头不是字母的"
grep -n '^[^a-zA-Z]' --color=auto regular_express

echo "以。结束的 \. $$"
grep -n '\.$' --color=auto regular_express
