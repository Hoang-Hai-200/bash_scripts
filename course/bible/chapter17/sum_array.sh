#!/bin/bash
####################################################
####################################################


function sum_array() {
    local sum=0
    local array
    #array=`echo "$@"`
    array=("$@")
    for i in ${array[*]}
    do
        echo "$i"
        sum=$[ $sum + $i ]
    done
    echo Sum = $sum
}


array=( 1 2 3 4 5 )



echo "My array ${array[*]}"
sum_array "${array[*]}"
