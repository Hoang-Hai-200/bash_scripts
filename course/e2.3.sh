#!/bin/bash
####################################################
####################################################

cat /etc/shadow &> /dev/null
status=$?
echo $status
if [ $status -eq 0 ]; then
    echo  "Command succeeded"
else 
    echo "Command failse"
fi
