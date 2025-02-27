#!/bin/bash

#taking input from user to check the status of the service 

echo "welcome to status check script"
read -p "please enter the service name: " service_name

if [[ -z $service_name ]]
then
    echo "please enter at-least one service name"
else
    status=$(systemctl status $service_name | awk 'NR==3{print $2}')
    echo "service is $status"
fi