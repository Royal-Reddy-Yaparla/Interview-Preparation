#!/bin/bash

echo "Welcome to the game , enter the a numeric number to find to is positive or negative"
read INPUT

if [ $INPUT -gt 0 ]; then 
    echo "It is postive"
else
    echo "It is negative"
fi