#!/bin/bash
data='abc,def,ghk.jkm'
oldifs=$IFS #默认是 空白符，空格，制表符，换行等
IFS=,now
for item in $data 
do
    echo $item
done 
IFS=$oldifs
