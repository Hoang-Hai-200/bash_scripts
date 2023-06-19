#!/bin/bash



#
#
total=$(ls -la irman* | wc -l)
echo there are $total file.

for i in irman*
do
    echo "Assign permission file"    
    chmod a-x $i 
    sleep 1
done

