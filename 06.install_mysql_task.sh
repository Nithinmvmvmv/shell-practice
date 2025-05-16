#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
     echo "ERROR:: Please run this with root access"
     exit 1
else 
    echo "running in root access"
    fi

dnf list installed mysql
if [ $? -eq 0 ]
    then
        echo "Installing MySQL is ... SUCCESS"
    else
        echo "Installing MySQL is ... FAILURE"
        exit 1
    fi
else
    echo "MySQL is already installed...Nothing to do"
    
fi
