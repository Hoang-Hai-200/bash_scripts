#!/bin/bash




echo "a = add record"
echo "d = delete record"
read -p "Choise :" choise

case $choise in
    a) /home/oracle/Downloads/53_systemInventory.sh;;
    d) /home/oracle/Downloads/53_deleteRecord.sh;;
    *) echo Invalid Choise - Bye
esac
