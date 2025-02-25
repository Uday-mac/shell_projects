#!/bin/bash

#installing the software by taking arguments 

#checking if the script is executed by the root user 

if [[ $(id -u) -eq 0 ]]
then
    echo "script is being executed with root user"
else
    echo "please execute the script with root or sudo user privileges"
    exit 1
fi

#checking if atleast one argument has been passed

if [[ $# -eq 0 ]]
then
    echo "please pass at-least one software name as command line argument"
    exit 1
fi

#installing the softwares using the for loop

for software in $@
do
    if which $software &> /dev/nulll
    then
        echo "software $software already exists"
    else
        echo "software does not exists, installing the software:$software"
        yum install $software -y > /dev/null
        if [[ $? -eq 0 ]]
        then
            echo "software installed successfully:$software"
        else
            echo "unable to install software $software"
        fi
    fi
done
