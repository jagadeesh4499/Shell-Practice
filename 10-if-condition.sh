#!/bin/bash

NUMBER1=$1
NUMBER2=$2

if[$NUMBER1 -gt $NUMBER2]
then
    echo "$NUMBER1 is greater than $NUMBER2"
else
    echo "$NUMBER1 is less than $NUMBER2"
fi