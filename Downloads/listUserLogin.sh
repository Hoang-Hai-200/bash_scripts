#!/bin/bash



today=`date | awk '{printf "%s %s  %s", $1,$2,$3'}`
echo $today
last | grep "$today" | awk '{print $1}' | uniq -u




echo '####################################################'
read -p "Day    :" d
read -p "Month  :" mm


last | grep "$mm  $d"





