#!/bin/bash
####################################################
####################################################


function testit() {
    echo "The parameter are : $@"
    thisarray=$1
    echo "the received array is ${thisarray[*]}"
}


myarray=(1 2 3 4 5 6)
echo "array : ${myarray[*]}"
#testit $myarray
testit "${myarray[*]}"
