#!/bin/bash
USERID=$(id -u)
CHECK_ROOT(){
    if [$USERID -ne 0]
    then
        echo "Please run this script with root previleges"
        exit 1
    fi
}
VALIDATE(){
    if [$1 -ne 0]
    then
        echo "$2 installation is not success"
        exit 1
    else
        echo "$2 installation is succcess"
    fi
}
CHECK_ROOT
dnf list installed tree
if [ $? -ne 0]
then
    echo "tree is not installed.....going to install it"
    dnf install tree -y
    VALIDATE $? "tree"
else
    echo "tree is already installed."
fi