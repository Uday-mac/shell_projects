#!/bin/bash

#delete the dir using the find command and for loop

for folder in $(find -type d)
do
  echo "the folder is $folder"
  
  if [[ -d test ]]
  then
    echo "this folder exits"
    echo "deleting the folder"
    rm -rf test
  else
    echo " test folder does not exits"
  fi
done