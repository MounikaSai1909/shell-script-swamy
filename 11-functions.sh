#!/bin/bash

USERID=$(id -u)

VALIDATE() {
    
      if [ $1 -eq 0 ] 
      then 
         echo " $2... SUCCESS"
      else
         echo " $2... FAILURE" 
      fi 
}

if [ $USERID -ne 0 ]
then
   echo "please run this script with root access"
   exit 1
else
   echo " You are super user"
fi

dnf install mysql -y
VALIDATE $? "Installing MYSQL"

dnf install git  -y
VALIDATE $? "Installing git"