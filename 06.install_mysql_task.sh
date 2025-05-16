#!/bin/bash
USERID=$(id -u)

if [ $USERID -nq 0 ]
then
echo "ERROR:: Please run this with root access"
exit 1
else
echo "you running with root access"
fi
dnf list installed mysql
if [ $? -ne 0]
then 
echo "mysql is not installed ---going to install now"
dnf install mysql -y
then 
echo "Installing is success"
else
echo "Installing is failure"
exit 1
fi
else
echo "Mysql is alredy installed"
fi