#!/bin/bash
#

a=`cat /home/oracle/abc`
for i in $a
do
    scp somefile $i:/tmp
