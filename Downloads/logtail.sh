#!/bin/bash



tail -fn0 /var/log/messages | while read line
do
    echo $line | egrep -i "refused|invalid|error|fail|lost|shutdown|offline"
    if [ $? -eq 0 ]
    then
        echo $line >> /tmp/filter_message.log
    fi
done
