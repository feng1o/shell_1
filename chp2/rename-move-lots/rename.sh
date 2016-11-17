#!/bin/bash

echo "reanme ...."
count=12
for img in `find  ./ -iname  "*.jpg" -o -iname "*.png" -maxdepth 1  `
do
    newname=${img%.*}
    echo $newname

    rname=img-${count}.${img##*.}
    mv ${img}  ${rname}
    let count++
done

for img in ` find ./  -iname '*.jpg' -o  -name '*.png' -maxdepth 1`
do
    newname=img-$count.${img##*.}
    mv $img $newname
    echo "reanme ---$img to  $newname"
    let count++
done

