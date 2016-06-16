#!/bin/bash
#filename: filestat.sh

if [ $# -ne 1 ]
then
    echo "no path...."
    exit
fi

path=$1
declare -A statarry;

while read line
do
    ftype=` file -b "$line" |cut -d , -f1`
    let statarry["$ftype"]++ ;
done < <(find $path -type f -print)

echo ---------------------filt type and counts --------------------
for ftype  in "${!statarry[@]}"
do 
    echo $ftype : ${statarry["$ftype"]}
done
