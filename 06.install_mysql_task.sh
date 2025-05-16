#!/bin/bash
USERID=$(id -u)

if [ $USERID -nq 0 ]
then
echo "ERROR:: Please run this with root access"
exit 1

     dnf list installed mysql
     if [ $? -ne 0 ]
     then 
     echo "mysql is not installed ---going to install now"
     dnf install mysql -y
     fi
     else
     echo "Installing is failure"
     exit 1
     fi
