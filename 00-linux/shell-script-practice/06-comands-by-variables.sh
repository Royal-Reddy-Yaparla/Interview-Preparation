#!/bin/bash

DATE=$(data)

echo "Today is : $DATE"

USER=$(whoami)

echo "your are $$USER"

echo "have just fun enter first number"
read FIRSTNUMBER

echo "enter second number , going to Summation"
read SECONDNUMBER

ADD=$((FIRSTNUMBER+SECONDNUMBER))


