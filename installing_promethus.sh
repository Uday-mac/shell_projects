#!/bin/bash

#installing the promethus depending on linux distribution

rpm -qa | grep wget 

if [[ $? -ne 0 ]]
then
    echo "installing wget"
    sudo yum install wget -y
else
    echo "wget already installed"
fi

echo "downloading the prometheus binaries"
file="/root/shell_projects/prometheus-3.2.0.linux-amd64.tar.gz"

if [[ -f $file ]]
then
    echo "file already exists so no need to download"
    tar -xzvf prometheus-3.2.0.linux-amd64.tar.gz
else
    echo "binaries does not exits in the system, we need to download the binaries"
    wget https://github.com/prometheus/prometheus/releases/download/v3.2.0/prometheus-3.2.0.linux-amd64.tar.gz
    tar -xzvf $file
    echo "file has been downloaded, you can start the prometheus"
fi