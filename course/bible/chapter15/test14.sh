#!/bin/bash
####################################################
####################################################


exec 3>&1
exec 1>test14out

echo "store in the output file"
echo "along with this line"

exec 1>&3
echo "Now things should be back to nomal"
