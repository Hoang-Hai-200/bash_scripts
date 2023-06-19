#!/bin/bash
####################################################
####################################################

while getopts t: opt 
do
    case "$opt" in
        t)
            if [ $OPTARG = "IPv4" ]
            then
                pingcommand=$(which ping)
            elif [ $OPTARG = "IPv6" ]
            then
                pingcommand=$(which ping6)
            else
                echo "Usage: -t IPv4 or -t IPv6" 
                echo "Exiting script..." 
            fi ;;
        *)
            echo "Usage: -t IPv4 or -t IPv6" 
            echo "Exiting script..." ;;
    esac

    shift $(( $OPTIND - 1 ))

    if [ $# -eq 0 ]
    then
        echo "Missing argurment"
        exit
    fi

    for i in $@
    do
        echo
        $pingcommand -q -c 3 $i
    done

done
