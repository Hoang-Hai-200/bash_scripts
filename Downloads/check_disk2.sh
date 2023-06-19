#!/bin/bash

df -h | egrep -vE "Filesystem|tmpfs|cdrom" | awk '{print $5, $1}' | while read output
do
    usep=$( echo $output | awk '{print $1}' | cut -d"%" -f1)

    par=$( echo $output | awk '{print $2}' )
    
    if [ $usep -ge 30 ]
    then
        echo "Partition $par  used space : $usep% as on $(hostname) at $(date)"
    fi



done

    

