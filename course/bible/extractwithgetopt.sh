#!/bin/bash
####################################################
####################################################


set -- $(getopt -q ab:cd "$@")

echo
while [ -n "$1" ]
do
    case "$1" in
        -a)
            echo "Found the -a option" ;;
        -b)
            param=$2
            echo "found the -b option with Values : $param"
            shift ;;
        -c) 
            echo "Found the -c option" ;;
        --) 
            shift
            break ;;
        *)
            echo "$1 is not an option"
    esac
    shift
done

echo

count=1
for i in $@
do
    echo "Parameter $count : $i"
    count=$[ $count + 1 ]
done
