#/bin/bash

read n
sum=0



#
#for ((i=1;i <= $n;i++))
#do
#    read y
#    sum=$(($y + $sum))
#done
#
 for i in $(seq $n)
 do
     read c
     sum=$[ $sum + $c ]
 done
echo 'Sum = '$sum 
echo "$sum / $n " | bc -l | xargs printf "%.3f"
