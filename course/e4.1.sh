#!/bin/bash
####################################################
####################################################


hello () {
    echo 'Hello'
    now
    echo $1
}


now() {
    echo `date`
}


hello $2




all() {
    for i in $@
    do
        echo $i
    done
}


all hoang thanh hai



echo "###################################################"
my_func() {
    local    VAR=1
}

echo $VAR
my_func
echo $VAR


