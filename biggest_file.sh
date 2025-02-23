#!/bin/bash

#finding the 5 biggest files in the given path

path="$1"
echo $path

du -ah $path | sort -hr | head -n 5 > /tmp/biggest_files.txt

cat /tmp/biggest_files.txt