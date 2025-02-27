#!/bin/bash

#taking inputs from the user using read

read -p "please enter your name: " name
read -p "please enter your password: " -s passwd
echo "Your name is : $name"
echo "Your password is : $passwd"
read -p "it will timeout in 3 seconds" -t 3