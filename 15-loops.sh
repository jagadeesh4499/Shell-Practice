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
for i in {tree,ansible}
do
    dnf list installed $i
    if [ $? -ne 0 ]
    then
        echo "$i is not installed.....going to install it"
        dnf install $i -y
        VALIDATE $? "$i"
    else
        echo "$i is already installed nothing to do"
    fi
done