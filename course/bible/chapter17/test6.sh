#!/bin/bash
####################################################
####################################################

function addem() {
    if [ $# -eq 0 ] || [ $# -gt 2 ]
    then
        echo -1
    elif [ $# -eq 1 ]
    then
        echo $[ $1 + $1 ]
    else
        echo $[ $1 + $2 ]
    fi
}


echo $(addem 10 15)
echo $(addem 10)
echo $(addem 10 10 15)
