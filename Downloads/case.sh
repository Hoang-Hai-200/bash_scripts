#!/bin/bash

echo "Choise a-c"
read -r -p 'Select choise :' n

case $n in
    a)
        echo "Hoang Thanh Hai choised a";;
    b) 
        echo "Hoang Manh Hung Choised b";;
    c) 
        echo "Hoang Em Be choised c";;
    *)
        echo "Nobodi Choise";;
esac



