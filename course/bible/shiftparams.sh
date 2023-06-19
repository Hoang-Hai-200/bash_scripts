#!/bin/bash
#
#

count=1

while [ -n "$1" ]
do
    case $1 in 
        -a)
            echo "option -a" ;;
        -b)
            echo "option -b" ;;
        -c)
            echo "option -c" ;;
        --)
            shift
            break ;;
        *)
            echo "$1 is not an option"
    esac
    shift
done




#
#
#


echo
count=1
for param in "$@"
do
    echo "parameter $count : $param"
done
