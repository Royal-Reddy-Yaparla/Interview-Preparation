#!/bin/bash

USER=$(id)


# VALIDATE(){
#     if [ $1 -ne 0 ]; then 
#         echo "$2 process is failed"
#         exit 1
#     else
#         echo "$2 process is success"
#     fi
# }


if [ $USER -ne 0 ]; then
    echo "need to provide sudo user access"
    exit 1
fi

dnf module list mysql

if [ $? -eq 0 ]; then 
    echo "mysql is already installed"
    exit 1
else
    echo "mysql is not installed , going to install"
    dnf install mysql-server -y
    if [ $? -eq 0 ] ; then
        echo "MySql is installed Successfully"
    else
        echo "ERROR: MySql installation is Failed"
        exit 1
    fi
fi    


