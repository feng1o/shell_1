#!/bin/bash
# delete duplicatefiles

echo -e "\e[1;35m" ----------------------
echo 
echo 
ls -lS | awk 'BEGIN { getline; getline; name1=$9; size=$5} 
    {name2=$9;\
        if ( size==$5 )
            {
                "md5sum " name1 | getline; csum1=$1; 
                "md5sum " name2 | getline; csum2=$1;
                if ( csum1 == csum2 ){
                    print name1; print name2  
                }};
            size=$5; name1=name2;
            }' | sort -u   >  ./duplicate_files
cat duplicate_files | xargs -I {}  md5sum   {} | sort | uniq -w 32 | awk '{ print "^"$2"$"  }' | sort -u > ./duplicate_sample

echo -e "\e[1;34m"
echo removing.....
comm duplicate_files duplicate_sample -2 -3 | tee /dev/stderr | xargs rm 


echo -e "\e[1;36m]"
echo rm--over
#cat ./duplicate_files
#cat ./duplicate_sample
