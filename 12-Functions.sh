#!/bin/bash

USERID=$(id -u)

CHECK_ROOT(){
}

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is...FAILED"
        exit 1
    else
        echo "$2 is...SUCCESS"
    fi
}

CHECK_ROOT

dnf list installed tree

if [ $? -ne 0 ]
then
    echo "tree is not installed, going to install it.."
    dnf install tree -y
    VALIDATE $? "Installing tree"
else
    echo "tree is already installed, nothing to do.."
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "MySQL is not installed...going to install"
    dnf install mysql -y
    VALIDATE $? "Installing MySQL"
else
    echo "MySQL is already installed..nothing to do"
fi