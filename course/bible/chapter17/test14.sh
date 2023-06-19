#!/bin/bash
####################################################
####################################################


. ./myfunc.sh


value1=10
value2=5

result1=$(addem $value2 $value1)
echo $result1

result2=$(mul $value2 $value1)
echo $result2

result3=$(div $value2 $value1)
echo $result3
