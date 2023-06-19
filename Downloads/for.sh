#!/bin/bash

read -p "Nhap n : " n
check_nt () {
    echo "Xin chao tat ca moi nguoi $1"    
}
echo " In ra so nguyen to <=n"

for i in $( seq 1 $n )
do
    if (( $i % 2 == 0 )); then
        check_nt $i
    fi

done
