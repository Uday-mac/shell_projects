#!/bin/bash

echo "scrip to install git"
echo "Installation started"

if [[ "$(uname)" == "Linux" ]]
then
    echo "this is linux box, installing git"
    yum install git -y
elif [[ "$(uname)" == "Darwin" ]] 
then
    echo "this is macos box, installing git"
    brew install git -y
else
    echo "not installing"
fi