#!/bin/bash
####################################################
####################################################



function factory {
    local input=$1
    if [ $input -eq 1 ]
    then
        echo 1
    else
        local temp=$(( $1 - 1  ))
        local result=$( factory $temp )
        echo $(( $result * $1 ))
    fi
}


read -p 'Nhap n :' value
result=$(factory $value )
echo "The factory of value is $result"
