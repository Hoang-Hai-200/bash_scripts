
#!/bin/bash
####################################################
####################################################

for file in /home/oracle/course/*
do
    if [ -d "$file" ]
    then
        echo "$file is directory"
    elif [ -f "$file" ]
    then
        echo "$file is a file"
    fi
done



echo "Parameter `basename $0`"
