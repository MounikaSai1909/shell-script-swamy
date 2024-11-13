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
      exit 1
    fi
    dnf install git -y
    if [ $? -eq 0 ]
    then
      echo "Installation of git is success"
    else
      echo "Installation of git is failure"
      exit 1
    fi
    
else 
   echo " You are not a super user,please run the script with root access"
   exit 1
fi
