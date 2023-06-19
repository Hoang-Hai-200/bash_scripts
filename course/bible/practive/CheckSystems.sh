#!/bin/bash
####################################################
####################################################

#
#case "$1" in 
#    -t)
#        shift
#        case $1 in
#            IPv4)
#                shift
#                for ip in "$@"
#                do
#                    ping -c 3 $ip >> /dev/null
#                    echo Status : $?
#                done ;;
#            IPv6)
#                shift
#                for ip in "$@"
#                do
#                    ping6 -c 3 $ip >> /dev/null
#                    echo Status : $?
#                done ;;
#        esac ;;
#esac
#
#
#


Path_='/home/oracle/course/bible/practive/addresses.txt'

cat $Path_ | while read line 
do
    


done
