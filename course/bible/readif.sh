#!/bin/bash
####################################################
####################################################



if read -t 15 -p 'Nhap ten : ' name
then
    echo "Xin chap $name"
else
    echo "No waiting for $name"
fi
exit
