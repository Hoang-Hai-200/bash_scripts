#!/bin/bash
####################################################
####################################################


count=1

cat $HOME/course/bible/test.txt | while read line 
do
    echo " $count : $line"
    count=$[ $count + 1 ]
done

