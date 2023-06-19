#!/bin/bash
####################################################
####################################################




function menu() {
clear
echo -e "\t\t\tSys Admin Menu\n" 
echo -e "\t1. Display disk space" 
echo -e "\t2. Display logged on users" 
echo -e "\t3. Display memory usage" 
echo -e "\t0. Exit menu\n\n"
read -n 1 -p " Enter option :" option
}

function diskspace() {
    clear
    df -k
}

function whoseon() {
    clear
    who
}

function memusage() {
   clear
   df -h
}



while [ 1 ]
do
    menu            
    case $option in
        0)
            echo
            echo "Good Bye" 
            break ;;
        1)
            diskspace ;;
        2)
            whoseon ;;
        3)
            memusage ;;
        *)
            clear
            echo " Sorry, wrong selection"
    esac
   echo -en "\n\n\n Hit key to continue" 
   read -n 1 line
done

