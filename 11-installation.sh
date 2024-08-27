#!/bin/bash
#Checking Root Preveleges
USERID=$(id -u)
if [ $USERID -ne 0 ] 
then 
    echo "Please run this script with root preveleges"
    exit 1
fi
#Installing Tree
dnf list installed mvn
if [ $? -ne 0 ]
then
    echo "Maven is not installed....going to install it"
    dnf install maven -y
    if [ $? -ne 0 ]
    then
        echo "Maven installation not sucess"
        exit 1
    else
        echo "Maven installation is success"
    fi
else
    echo "Maven is already installed"
fi  
