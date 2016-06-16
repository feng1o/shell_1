#!/bin/bash

var=$( ls -l $1 )
echo "var is = $var"
case $var in
    "-rw-rw-r--"*)
        echo "this is not a execute file";;
    "-rwxrwxr-x"*)
        echo "this is a execute file";;
    *)
        echo "xxxxxxxxxxxxxx"
esac




echo "test case yes y, Y , n N, no"

read -p "yes or no, y,Y,N,n"  yn
case $yn in
    yes)
        echo "yes";;
    no)
        echo "no";;
    [yY]) 
        echo "[Yy]取单个字符Y或者y";;
    [Nn])
        echo "[nN]取单个任意";;
    *)
        echo "error input ";;
esac



