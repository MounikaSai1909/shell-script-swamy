#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]
then
   echo "you are a super user "
   dnf install mysql -y
   if [ $? -eq 0 ]
   then
      echo "Installation of mysql is success"
    else
      echo "Installation of mysql is failure"
    fi
else 
   echo " You are not a super user,please run the script with root access"
   exit 1
fi
