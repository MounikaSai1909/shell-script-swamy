# log redirection and colours are mandatory
# user have root access or not
# send packages to install as parameters


#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]
then
   echo " You are a super user "
else
   echo " Please run this script with root access"
   exit 1
fi

for i in $@
do
   echo "package to install: $i"
done