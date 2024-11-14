# log redirection and colours are mandatory
# user have root access or not
# send packages to install as parameters


#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

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
   dnf list installed $i &>>$LOGFILE
   if [ $? -eq 0 ]
   then 
      echo -e  "$i already installed... $G skipping $N"
   else
      echo -e "$i not installed...$R Need to install $N"
    fi
done