#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE() {
      if [ $1 -eq 0 ] 
      then 
         echo "$2... SUCCESS"
      else
         echo "$2... FAILURE" 
         exit 1
      fi 
}

if [ $USERID -ne 0 ]
then
   echo "please run this script with root access"
   exit 1
else
   echo " You are super user"
fi

dnf install mysqll -y &>>$LOGFILE
VALIDATE $? "Installing MYSQL"

dnf install gitt  -y &>>$LOGFILE
VALIDATE $? "Installing git"