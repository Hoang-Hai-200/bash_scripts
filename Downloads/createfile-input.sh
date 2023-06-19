#!/bin/bash



#
#
read -p "how many file do you want ? " n

for i in $( seq 1 $n)
do
    touch $n\_$i

done

