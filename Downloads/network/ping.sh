#!/bin/bash

#host=192.168.0.1
#ping -c1 $host &> /dev/null
#
#if [ $? -eq 0 ]; then
#    echo "$host Access"
#else
#    echo "$host NoInternet"
#fi
#

#echo "_______________________________________________________-"
iplist="/home/oracle/Downloads/network/ip.txt"

for i in $(cat $iplist)
do
    ping -c1 $i &> /dev/null
    if [ $? -eq 0 ]; then
        echo "$i Access"
    else
        echo "$i NoInternet"
    fi
done
