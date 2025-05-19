#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
NOCOLOR="\e[0m"



USER_ID=$(id -u)


if [ $USER_ID -ne 0 ]
then
    echo "$RED ERROR: need to provide sudo user access $NOCOLOR"
    exit 1
fi

# mysql install
dnf list installed mysql

if [ $? -eq 0 ]
then 
    echo "$YELLOW INFO: mysql is already installed $NOCOLOR"
    exit 1
else
    echo "$YELLOW INFO: mysql is not installed , going to install $NOCOLOR"
    dnf install mysql-server -y
    if [ $? -eq 0 ]
    then
        echo "INFO: MySql is installed $GREEN Successfully $NOCOLOR"
    else
        echo "$RED ERROR: MySql installation is Failed $NOCOLOR"
        exit 1
    fi
fi    


# python3 install
dnf list installed python3

if [ $? -eq 0 ]
then 
    echo "$YELLOW INFO: python3 is already installed $NOCOLOR"
    exit 1
else
    echo "$YELLOW INFO: python3 is not installed , going to install $NOCOLOR"
    dnf install python3 -y
    if [ $? -eq 0 ]
    then
        echo "INFO: python3 is installed $GREEN Successfully $NOCOLOR"
    else
        echo "$RED ERROR: python3 installation is Failed $NOCOLOR"
        exit 1
    fi
fi    


# nginx install
dnf list installed nginx

if [ $? -eq 0 ]
then 
    echo "$YELLOW INFO: nginx is already installed $NOCOLOR"
    exit 1
else
    echo "$YELLOW INFO: nginx is not installed , going to install $NOCOLOR"
    dnf install nginx -y
    if [ $? -eq 0 ]
    then
        echo "$YELLOW INFO: nginx is installed $GREEN Successfully $NOCOLOR"
    else
        echo "$RED ERROR: nginx installation is Failed $NOCOLOR"
        exit 1
    fi
fi    