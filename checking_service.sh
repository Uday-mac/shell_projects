#!/bin/bash

#checking the script if the script is run by the root user

if [[ $UID -ne 0 ]]
then 
    echo "please run the script with the root user"
else 
    echo "running the script with the root user"
fi

#checking if the docker service is active or not

echo "=======status of docker service==========="

status=$(systemctl status docker.service | grep Active | awk '{print $2}')

if [[ $status == active ]]
then 
    echo "docker service is active"
else
    echo "docker service is inactive and starting the service"
    systemctl start docker.service > /dev/null
fi