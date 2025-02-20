#!/bin/bash

read n

a=$(($n%4))
b=$(($n%100))
c=$(($n%400))

if [ $a -eq 0 -a $b -ne 0 -o $c -eq 0]
then
    echo n is leap year
else
    echo n is not leap year
fi