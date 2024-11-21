#!/bin/bash
DISK_USAGE=$(df -hT|grep xfs)
DISK_THRESHOLD=10
while IFS= read -r line #IFS,internal field seperatpor, empty it will ignore while space.-r is for not to ingore special charecters like /
do
    USAGE=$(echo $line | awk -F " " '{print $6F}')
done <<< $DISK_USAGE