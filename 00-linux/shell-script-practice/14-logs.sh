#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"



USER_ID=$(id -u)
LOG_REPO="/var/log/package-install-logs"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
ACCESS_LOG_FILE="$LOG_REPO/access_$SCRIPT_NAME.log"
ERROR_LOG_FILE="$LOG_REPO/error_$SCRIPT_NAME.log"
echo "$LOG_FILE"


mkdir -p "$LOG_REPO"

if [ $USER_ID -ne 0 ]
then
    echo -e "$R ERROR: need to provide sudo user access $N"
    exit 1
fi


# # mysql install
# dnf list installed mysql 1>>$ACCESS_LOG_FILE

# if [ $? -eq 0 ]
# then 
#     echo -e "$Y INFO: mysql is already installed $N" 1>>$ACCESS_LOG_FILE
# else
#     echo -e "$Y INFO: mysql is not installed , going to install $N" 1>>$ACCESS_LOG_FILE
#     dnf install mysql -y 1>>$ACCESS_LOG_FILE
#     if [ $? -eq 0 ]
#     then
#         echo -e "INFO: MySql is installed $G Successfully $N" 1>>$ACCESS_LOG_FILE
#     else
#         echo -e "$R ERROR: MySql installation is Failed $N" 2>>$ERROR_LOG_FILE
#         exit 1 
#     fi
# fi    

INSTALL(){
    dnf list installed $1 1>>$ACCESS_LOG_FILE

    if [ $? -eq 0 ]
    then 
        echo -e "$Y INFO: $1 is already installed $N" 1>>$ACCESS_LOG_FILE
    else
        echo -e "$Y INFO: $1 is not installed , going to install $N" 1>>$ACCESS_LOG_FILE
        dnf install $1 -y 1>>$ACCESS_LOG_FILE
        if [ $? -eq 0 ]
        then
            echo -e "INFO: $1 is installed $G Successfully $N" 1>>$ACCESS_LOG_FILE
        else
            echo -e "$R ERROR: $1 installation is Failed $N" 2>>$ERROR_LOG_FILE
            exit 1 
        fi
    fi    
}


INSTALL() mysql


# # python3 install
# dnf list installed python3

# if [ $? -eq 0 ]
# then 
#     echo -e "$Y INFO: python3 is already installed $N"
# else
#     echo -e "$Y INFO: python3 is not installed , going to install $N"
#     dnf install python3 -y
#     if [ $? -eq 0 ]
#     then
#         echo -e "$Y INFO: python3 is installed $G Successfully $N"
#     else
#         echo -e "$R ERROR: python3 installation is Failed $N"
#         exit 1
#     fi
# fi    


# # nginx install
# dnf list installed nginx

# if [ $? -eq 0 ]
# then 
#     echo -e "$Y INFO: nginx is already installed $N"
# else
#     echo -e "$Y INFO: nginx is not installed , going to install $N"
#     dnf install nginx -y
#     if [ $? -eq 0 ]
#     then
#         echo -e "$Y INFO: nginx is installed $G Successfully $N"
#     else
#         echo -e "$R ERROR: nginx installation is Failed $N"
#         exit 1
#     fi
# fi    