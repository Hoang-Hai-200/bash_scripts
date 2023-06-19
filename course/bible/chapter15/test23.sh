#!/bin/bash
####################################################
####################################################


outfile='member.sql'
IFS=','

cat "$1" | while read lname fname address city state zip
do
    cat >> $outfile << EOF
    INSERT INTO member (lname,fname,address,city,state,zip)
    VALUES ("$lname","$fname","$address","$city","$state","$zip");
EOF
done
