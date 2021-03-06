#!/bin/bash
# 统计文件次平
#

if [ $# -ne 1 ]
then
    echo "usage : $0 : filename\n";
    exit -1
fi

filename=$1

egrep -o "\b[[:alpha:]]\b" $filename | \
    awk '{ count[$0]++ }  \
    END{ printf("%-14s$s\n", "word","count");\
    for( ind in count )
        {printf("%-14s%d\n", ind, count[ind]);}
    }'
