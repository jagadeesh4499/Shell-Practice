#!/bin/bash
#Checking Root Preveleges
USERID=$(id -u)
if [$USERID -ne 0]
then 
    echo "Please run this script with root preveleges"
    exit 1
fi
#Installing Tree
dnf list installed tree
if [$? -ne 0]
then
    echo "Tree is not installed....going to install it"
    dnf install tree -y
    if [$? -ne 0]
    then
        echo "Tree installation not sucess"
        exit 1
    else
        echo "Tree installation is success"
    fi
else
    echo "Tree is already installed"
fi  
