#!/bin/bash
#
#


read -p 'Please enter hostname :' host


grep -q $host /home/oracle/Downloads/database 
if [ $? -eq 0 ]
then 
    echo Error -- hostname $host already exits
    echo
    exit 0
fi



read -p 'Please enter ip :' ip


grep -q $ip /home/oracle/Downloads/database 
if [ $? -eq 0 ]
then 
    echo Error -- hostname $ip already exits
    echo
    exit 0
fi


echo $host $ip >> /home/oracle/Downloads/database

echo "Added record to database"
