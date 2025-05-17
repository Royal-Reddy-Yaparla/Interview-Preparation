#!/bin/bash

echo "all arguments: $@"
echo "number of arguments passed: $# "
echo "shell file: $0"
echo "current working directory $PWD"
echo "Home directory $HOME"
echo "username: $USER"
echo "PID: $$"
sleep 20 & # to run in background

echo "PID: $!" # to get hidden process id

