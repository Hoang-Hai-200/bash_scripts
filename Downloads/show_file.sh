#!/bin/bash


FILE="/etc/pass
/etc/group
/etc/shadow
/etc/fake
/etc/hoang
/etc/nsswitch.conf"


for i in $FILE
do
    if [ ! -e $i ]
    then
        echo $i do no exits
    fi
    
done
