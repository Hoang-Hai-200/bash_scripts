#!/bin/bash
####################################################
####################################################



read -s -p 'Hoang Thanh Hai yeu cau ban nhap :' value

echo $value

echo
case $value in
    a)
        echo "Hoang THanh Hai" ;;
    b)
        echo "Hoang Manh Hung" ;;
    *)
        echo "Welcome" ;;
esac
echo 
echo $value
