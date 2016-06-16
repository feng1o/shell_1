#!/bin/bash
echo "扩展正则表达式egrep -i v An Bn  "
egrep -n --color=auto  'go+d' regular_express
egrep -n --color=auto  'go?d' regular_express
egrep -n --color=auto  'good|gd' regular_express
egrep -n --color=auto  'g(la|oo)d' regular_express
egrep -n  -A1 -B2 --color=auto  'the' regular_express

echo
echo 'AbcdbcdbcdB' | egrep 'A(bcd)+B'
printf "\n v reverse display \n\n "
egrep -vn --color=auto  'the' regular_express

