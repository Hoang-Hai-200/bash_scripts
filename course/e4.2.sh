#!/bin/bash
####################################################
####################################################




function file_count() {
    echo `ls $1 | wc -l`
}

folder_() {
    for i in $@
    do
        echo $i
        file_count $i
    done
}


folder_ /etc /var /usr/bin
