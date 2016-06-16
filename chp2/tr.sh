#!/bin/bash

echo -e "\e[1;35m tr......]"

echo 
echo -e "\e[33m tr 'a-z' 'A-Z'大小写换"
echo "HELLo lu Fell !" | tr 'A-Z' 'a-z'

tr '\n' '......' < tr.sh

echo
echo -e "\e[37m tr -d '[]'删除指定字符集合]"
echo "tr1 tr2 tr3 ...." | tr -d '[tr1]'
echo "tr1 tr2 tr3 ...." | tr -d 'tr1'
echo "tr1 tr2 tr3 ...." | tr -d '0-9'

echo 
echo  -e "\e[38m tr -c ' '字符补集]"
echo "abc 1 asdgn2 dakgnc3" | tr -d -c '0-9 \n'
echo "abc 1 asdgn2 dakgnc3" | tr -d -c '0-9\n'

echo 
echo -e "\e[32m tr 压缩字符]"
cat tr.txt
echo "结果是"
cat  tr.txt | echo $[ $(tr '\n' '+' ) 0 ]
cat  tr.txt | tr -s '\n'
cat tr.txt | tr '\n' '.:.'

echo 
echo -e "\e[31m  [ :CLASS: ] [ : CLASS: ]]"
echo "hello...." | tr '[:lower:]' '[:upper:]'
