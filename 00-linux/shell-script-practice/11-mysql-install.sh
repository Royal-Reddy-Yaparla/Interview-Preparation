#!/bin/bash

USER_ID=$(id -u)


# VALIDATE(){
#     if [ $1 -ne 0 ]; then 
#         echo "$2 process is failed"
#         exit 1
#     else
#         echo "$2 process is success"
#     fi
# }


if [ $USER_ID -ne 0 ]
then
    echo "ERROR: need to provide sudo user access"
    exit 1
fi

dnf list installed mysql

if [ $? -eq 0 ]
then 
    echo "mysql is already installed"
    exit 1
else
    echo "mysql is not installed , going to install"
    dnf install mysql-server -y
    if [ $? -eq 0 ]
    then
        echo "MySql is installed Successfully"
    else
        echo "ERROR: MySql installation is Failed"
        exit 1
    fi
fi    


