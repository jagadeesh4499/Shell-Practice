#!/bin/bash
R="\e[31m"
G="\e[32m"
N="\e[0m"
USERID=$(id -u)
CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
        echo "Please run this script with root priveleges"
        exit 1
    fi
}
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 Installation is.....$R FAILED"
        exit 1
    else
        echo -e "$2 Installation is.....$G SUCCESS"
    fi
}
CHECK_ROOT
dnf list installed tree
if [ $? -ne 0 ]
then
    echo "tree is not installed.....going to install it"
    dnf install treee -y
    VALIDATE $? "tree"
else
    echo "tree is already installed."
fi
dnf list installed ansible
if [ $? -ne 0 ]
then 
    echo "ansible is not installed.....going to install it"
    dnf install ansiblee -y
    VALIDATE $? "ansible"
else
    echo "ansible is already installed"
fi