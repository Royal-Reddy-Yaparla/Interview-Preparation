#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"



USER_ID=$(id -u)
LOG_REPO="/var/log/package-install-logs"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOG_REPO/$SCRIPT_NAME.log"
# echo "$LOG_FILE"


mkdir -p "$LOG_REPO"

if [ $USER_ID -ne 0 ]
then
    echo -e "$R ERROR: need to provide sudo user access $N"
    exit 1
fi

# The tee command, used with a pipe, reads standard input, 
# then writes the output of a program to standard output and 
# simultaneously copies it into the specified file or files. Use the tee command to view your output immediately and at the same time, store it for future use.


INSTALL(){
    dnf list installed $1 &>>$LOG_FILE

    if [ $? -eq 0 ]
    then 
        echo -e "$Y INFO: $1 is already installed $N" | tee -a $LOG_FILE
    else
        echo -e "$Y INFO: $1 is not installed , going to install $N" | tee -a $LOG_FILE
        dnf install $1 -y 1>>$LOG_FILE
        if [ $? -eq 0 ]
        then
            echo -e "INFO: $1 is installed $G Successfully $N"  | tee -a $LOG_FILE
        else
            echo -e "$R ERROR: $1 installation is Failed $N"  | tee -a $LOG_FILE
            exit 1 
        fi
    fi    
}


INSTALL "mysql"

INSTALL "python3"

INSTALL "nginx"
