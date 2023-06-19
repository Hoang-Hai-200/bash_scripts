#!/bin/bash
#
#

#Description : This is script will send an email to administrator


IT="hoangthanhhaitb@gmail.com"


if [ -s /tmp/filter_message.log ]
then
    cat "/tmp/filter_message.log" | sort | uniq | mail -s "Error" $IT
fi
