#!/bin/bash

#deleting the file which are above 30 days

path="$1"

echo $path

find $path -mtime +30 -delete

if [[ $? -eq 0 ]]
then
    echo "deleted files successfully"
else
    echo "deletion unsuccessfully"
fi
