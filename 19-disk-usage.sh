#!/bin/bash
# DISK_USAGE=$(df -hT|grep xfs)
# DISK_THRESHOLD=10
# while IFS= read -r line #IFS,internal field seperatpor, empty it will ignore while space.-r is for not to ingore special charecters like /
# do
#     USAGE=$(echo $line | awk -F " " '{print $6F}')
#     echo "$USAGE"
# done <<< $DISK_USAGE


DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5 #real projects, it is usually 75


while IFS= read -r line #IFS,internal field seperatpor, empty it will ignore while space.-r is for not to ingore special charecters like /
do
    USAGE=$(echo $line | grep xfs | awk -F " " '{print $6F}')
    echo "$USAGE"
done <<< $DISK_USAGE