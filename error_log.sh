#!/bin/bash

#checking the errors in the /var/log/messages

matched_error=$(grep -i error /var/log/messages)

echo $matched_error

if [[ $? -eq 0 ]]
then
    echo "found error is OS logs: $matched_error"
else
    echo "no error in message logs"
fi