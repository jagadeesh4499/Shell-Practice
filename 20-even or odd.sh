#!/bin/bash

read number
result=$(($number%2))
if [ $result -eq 0 ]
then 
    echo number is even
else
    echo number is odd
fi