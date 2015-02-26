#!/bin/env bash

read -p "Enter target directory: " targetDir0
reat -p "Enter target file: " targetFile0
targetFile0=/tmp/.hashes/txt


tree -a $targetDir0 | awk '{print $2,$3}'


awk '{ $2 ~ /── .hashes/ ; print $2}' /tmp/tmpTree.txt

echo "/tmp/.hashes/txt" | awk -F "/" '{print $0}'
