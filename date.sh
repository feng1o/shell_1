#!/bin/bash

date 
echo "date +%s m d h y "
date +%s 
date +%Y
date +%y

echo 
echo 'date --date "thu Nov 18 00:00:02 2010" +%s'
date --date "thu Nov 18 00:00:02 2010" +%s

echo "格式控制打印"
date +"%m %y :  %B"

#
start=[ date +%s ]
echo $start
sleep 1
end=$(date +%s)
diff=$(( end - start ))
echo "diff = $diff"

count=0
while true 
do
    if [ $count -lt 5 ]
    then
        let  count++
        sleep  1
        echo  $count 
    else 
        exit  0
    fi
done


