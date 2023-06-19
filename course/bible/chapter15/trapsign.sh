#!/bin/bash
####################################################
####################################################


#trap "echo 'sorry. i have trap Ctrl-C'" SIGINT
trap "echo hoang" EXIT

echo This is a test scripts

count=1
while [ $count -le 5 ]
do
    echo "loop #$count"
    sleep 1
    count=$[ $count + 1 ]


done

echo "This is the end of test scripts"
exit
