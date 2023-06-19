#!/bin/bash
####################################################
####################################################


echo $(basename $0)
echo "number parameter $#"
echo "potision of parameter ${!#}"
echo "$$"
echo "${$#}"

for param in "$@"
do
    echo $param

done
