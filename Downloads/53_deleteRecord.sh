#!/bin/bash

read -p "delete hostname :" host

echo
grep -q $host /home/oracle/Downloads/database
if [ $? -eq 0 ]
then
    sed -i '/'$host'/d' /home/oracle/Downloads/database
else
    echo Record not exist
fi

