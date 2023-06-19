#!/bin/bash
####################################################
####################################################


while getopts a:bc: option 
do
    case "$option" in
        a) 
            echo "Option a with parameter $OPTARG" ;;
        b)
            echo "Option b" ;;
        c)
            echo "Option c with parameter $OPTARG" ;;
        ?)
            echo "Unkown option $option" ;;
    esac
done


echo "$OPTIND"

shift $[ $OPTIND -1 ]

echo
count=1
for i in "$@"
do
    echo "Parameter $count:  $i"
    count=$((count + 1))
done

