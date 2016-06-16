#!/bin/bash

echo "生成子进程...`o`·`Ooo`O``````"

pwd;
(cd /home;exit)
pwd


echo "通过子shell，获取的变量，换行符会不存在，保存“”"
out=$(cat subprocess.sh)
echo $out

out="$(cat subprocess.sh)"
echo $out

out=`cat subprocess.sh`
echo $out
