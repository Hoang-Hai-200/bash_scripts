#!/bin/bash
####################################################
####################################################


while getopts S: opt 
do
    case "$opt" in
        S)
            for arg in $OPTARG
            do
                case $arg in
                    1)
                        signalList=$signalList"SIGHUP " ;;
                    2)
                        signalList=$signalList"SIGINT " ;;
                    3)
                        signalList=$signalList"SIGTSTP " ;;
                    *)
                        echo "Only signals 1 2 and/or 20 are allowed."
                        echo "Exitting scripts ..."
                        exit ;;
                esac

            done
            *)
            echo "Usage: -S "Signal(s)" script-to-run-name"
            echo "Exitting scripts ..."
            exit ;;
    esac
done
