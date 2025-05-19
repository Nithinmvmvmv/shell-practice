#!/bin/bash

USERID=$(id -u)

#list of clours [red,green,yellow,no colour] used in file and creating variables to use,
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#we use red - packages
#we use green - success
#we use yellow - if alredy installed

if [ $USERID -ne 0 ]
then
    #hear colour red is giving and ending eith normal colour
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1 #give other than 0 upto 127
else
    echo "You are running with root access"
fi

# validate functions takes input as exit status, what command they tried to install
VALIDATE(){
    if [ $1 -eq 0 ]
    then
        #hear,colour green is given ,and ended in same line
        echo -e "Installing $2 is ... $G SUCCESS $N"
    else
        #hear,colour red is given ,and ended in same line
        echo -e "Installing $2 is ... $R FAILURE $N"
        exit 1
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo "MySQL is not installed... going to install it"
    dnf install mysql -y
    VALIDATE $? "MySQL"
else
    #hear,colour yellow is given ,and ended in same line
    echo -e "Nothing to do MySQL... $Y already installed $N"
fi

dnf list installed python3
if [ $? -ne 0 ]
then
    echo "python3 is not installed... going to install it"
    dnf install python3 -y
    VALIDATE $? "python3"
else
    #hear,colour yellow is given ,and ended in same line
    echo -e "Nothing to do python... $Y already installed $N"
fi

dnf list installed nginx
if [ $? -ne 0 ]
then
    echo "nginx is not installed... going to install it"
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    #hear,colour yellow is given ,and ended in same line
    echo -e "Nothing to do nginx... $Y already installed $N"
fi