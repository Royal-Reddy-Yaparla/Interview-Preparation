#!/bin/bash

echo "all arguments: $@"
echo "number of arguments passed: $# "
echo "shell file: $0"
echo "current working directory $PWD"
echo "Home directory $HOME"
echo "username: $USER"
echo "PID: $PID"
sleep 20 &

echo "PID: $PID"

