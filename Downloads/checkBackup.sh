#!/bin/bash
#
#


find /tmp/backupETC.bk.gz -type f -print

if [ $? -eq 0 ]; then
    echo Backup Success
    #scp /tmp.backupETC.bk.gz roo
else
    echo Backup Faile
fi
