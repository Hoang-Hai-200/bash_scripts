#!/bin/bash
####################################################
####################################################
exec 1> testout

while getopts t: opt
do
    case "$opt" in
        t)
            if [ $OPTARG = "IPv4" ]
            then
                pingcommand=$(which ping )
                echo "v4"
            elif [ $OPTARG = 'IPv6' ] 
            then
                pingcommand=$(which ping6)
                echo "v6"
            else
                echo "Usage: -t IPv4 or -t IPv6"
                echo "Exiting script..." 
                exit
            fi ;;
        *)
            echo "Usage: -t IPv4 or -t IPv6"
            echo "Exiting script..." 
            exit ;;
    esac

shift $[ $OPTIND - 1 ]
    if [ $# -eq 0 ]
    then
        echo " IP parameter are missing"
        echo "Exiting"
    fi

    for i in $@
    do
        echo "Check system address :"
        echo
        $pingcommand -q -c 3 $i
    done

done

FILE_NAME="/home/oracle/course/bible/practive/addresses.txt"
if [ -s $FILE_NAME ] && [ -r $FILE_NAME ]
then
        echo "$FILE_NAME is a file and readable, not empty"
        echo
        cat $FILE_NAME | while read line
    do
        ipaddress=$line
        read line
        iptype=$line
        if [ $iptype = "IPv4" ]
        then
            pingcommand=$( which ping )
        else 
            pingcommand=$(which ping6)
        fi
        echo "CHeck ip"
        $pingcommand -q -c 1 $ipaddress
        echo
    done
else
    echo "not access file"
fi

exit
    
































