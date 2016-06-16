#!/bin/bash
echo "debug -x set -x +x set -+v"
for i in {1..10}
do
    set -x
    echo $i
    set +x 
done 

echo 
echo " _DEBUG 自定义的格式打印调试信息 _DEBUG=on ./xx.sh "
function DEBUG()
{
    [ "$_DEBUG" == "on" ] && $@ || : # ：在shell里面就是不进行任何操作
}

for i in {1..5}
do
    DEBUG echo $i
done

