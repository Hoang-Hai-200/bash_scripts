#!/bin/bash
####################################################
####################################################

function print_array() {
    local sum=0
    local array
    array=("$@")
    for i in ${array[*]}
    do
        echo "$i"
    done
}



function arraydblr() {
    local origarray
    local newarray
    local element
    local i

    origarray=("$@")
    newarray=("$@")


    print_array  "${origarray[*]}"
    element=$(( $# -1 ))
    for(( i=0;i <= $element ; i++ ))
        {
            newarray[$i]=$(( ${origarray[$i]} * 2 ))
        }
    echo ${newarray[*]}
}

array=( 1 2 3 4 5 )
arraydblr ${array[*]}




