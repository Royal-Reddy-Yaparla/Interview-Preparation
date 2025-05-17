#!/bin/bash

echo "Welcome to the game , enter the a numeric number to find to is positive or negative"
INPUT=$1

if [ $INPUT -gt 0 ]; then 
    echo "It is postive"
else
    echo "It is negative"
fi