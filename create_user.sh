#!/bin/bash

#exiting the script if anything goes wrong 

set -e

#revision 1.0
#date 22/02/2025

#checking if the script is run by sudo or not
if [[ "${UID}" -eq 0 ]]
then
  echo "executing script with root user"
else
  echo "please execute the script with root user"
  exit 1
fi

#checking the arguments
if [[ "${#}" -lt 1 ]]
then
  echo "please enter atleast one argument"
  echo "usage ${0} user_name [comment]..."
  exit 1
fi

#storing user name
user_name="${1}"
echo $user_name

#storing extra arguments
shift
comment=$@
echo $comment

#creating the user

useradd -c "${comment}" -m $user_name

#checking if user is created or not 

if [[ $? -ne 0 ]]
then
   echo "user not created successfully"
   exit 1
fi

#creating the password for user 
password=$(date +%sN)

echo $password | passwd --stdin $user_name

#checking if the password is created"
if [[ $? -ne 0 ]]
then
    echo "password not created successfully"
    exit 1
fi

#changing the password after first login 

passwd -e $user_name

#displaying the user_name, password and hostname
echo "username is : $user_name"

echo "password is : $password"

echo "hostname is : $(hostname)"