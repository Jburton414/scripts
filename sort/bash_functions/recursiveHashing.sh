#!/bin/env bash

#make hashes of files recursivly & output to file then compare to the 
#hashes of another directory

read -p "Enter the full path to the first directory: " targetDir0
echo $targetDir0

read -p "Enter the full path to the second directory: " targetDir1
echo $targetDir1

md5deep -r $targetDir0 > /tmp/hashes3 

cat /tmp/hashes3 | awk '{$print2}'
#awk 'BEGIN {print $2}' /tmp/hashes3
