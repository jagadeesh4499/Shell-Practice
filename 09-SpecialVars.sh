#!/bin/bash
echo "Variables passed to the script : $@"
echo "Number of variables passed to the script : $#"
echo "To know the name of script : $0"
echo "To know the current working directory : $PWD"
echo "To know the home path : $HOME"
echo "To know the PID of current running shell script : $$"
sleep 10 &
echo "To know the PID of last background command : $!"
# $? --> To know the previous command is success or not. If success it will print 0 and if fails it will print any number