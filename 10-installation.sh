#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]
then
   echo "you are a super user "
   dnf install mysql -y
else 
   echo " You are not a super user,please run the script with root access"
   exit 1
fi
