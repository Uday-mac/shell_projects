#!/bin/bash

#getting the disk space percentage 

space=$(df -h | grep /dev/mapper/cs-root | awk '{print $5}' | tr -d %)

if [[ $space -gt 80 ]]
then
    echo "${space}% is full"
    echo "disk space is full, expand disk or delete some files"
else
    echo "${space}% is full"
    echo "disk space is enough"
fi