#!/bin/bash

echo "reanme ...."
count=11
for img in ` find ./  -iname '*.jpg' -o  -name '*.png' -maxdepth 1`
do
    newname=img-$count.${img##*.}
    mv $img $newname
    echo "reanme ---$img to  $newname"
    let count++
done

