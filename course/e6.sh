#!/bin/bash
####################################################
####################################################


LA=`ls $(pwd)`
echo $LA
echo "#######################################"
for i in $LA
do
    if [ -f $i ]; then
        echo "$i : regular file"
    elif [ -d $i  ];then
       echo "$i : folder"
    else 
        echo "$i other type of file"
    fi
done


ls -la $(pwd) | tail -n+4
