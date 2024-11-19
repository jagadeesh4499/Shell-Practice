#!/bin/bash
LOGS_FOLDER="/var/log/shellscript"
SCRIPT_NAME=$(echo $0|cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME/$TIMESTAMP.log"
mkdir -p $LOGS_FOLDER
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
USERID=$(id -u)
CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
        echo "$R Please run this script with root priveleges $N" &>>$LOG_FILE
        exit 1
    fi
}
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 Installation is.....$R FAILED $N" &>>$LOG_FILE
        exit 1
    else
        echo -e "$2 Installation is.....$G SUCCESS $N" &>>$LOG_FILE
    fi
}
CHECK_ROOT
for i in $@
do
    dnf list installed $i &>>$LOG_FILE
    if [ $? -ne 0 ]
    then
        echo "$i is not installed.....going to install it" &>>$LOG_FILE
        dnf install $i -y &>>$LOG_FILE
        VALIDATE $? "$i"
    else
        echo "$i is already $Y installed nothing to do $N" &>>$LOG_FILE
    fi
done