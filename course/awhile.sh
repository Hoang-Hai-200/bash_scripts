#!/bin/bash
####################################################
####################################################


LINE_NUM=1

while read LINE 
do
    echo "${LINE_NUM}: ${LINE}"
    ((LINE_NUM++))
    [[ LINE_NUM -gt $2 ]] && break
done < $1
