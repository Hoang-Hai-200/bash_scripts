#!/bin/bash 
####################################################
####################################################



DEBUG=false

$DEBUG || echo " Debug mode on"



debug() {
    echo "Executing $@"
    for i in $@
    do
        echo $i
    done


}


debug 1 2 3 4  57  8



set -v
FILE_NAME="/not/here"
ls $FILE_NAME
echo $FILE_NAME

