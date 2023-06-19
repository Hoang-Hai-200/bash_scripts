#!/bin/bash
####################################################
####################################################



while [ -n "$1" ]
do
    case "$1" in
        -a) echo " -a Option " ;;
        -b) echo " -b Option " ;;
        -c) echo " -c Option " ;;
        *) echo " $1 is not an Option " ;;
    esac
    shift
done

