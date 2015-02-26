#!/usr/bin/env bash

#read $targetDir0
read -p "Enter the full path of the first target directory:" targetDir0
#read $targetDir1
read -p "Enter the full path of the second target directory:" targetDir1

#calculate the checksums of the first target directory and save it to a file in /tmp
md5deep -r $targetDir0 > /tmp/.$targetDir0.hashes
echo

#show matching files 
md5deep -rm /tmp/.$targetDir0.hashes $targetDir1
echo
#show matching files and thier hashes
md5deep -rM /tmp/$targetDir0.hashes $targetDir1
echo

#show files that are in the first target directory but not the second 
md5deep -rx /tmp/$targetDir0.hashes $targetDir1
echo
#show files, and hashes of files, that are in the first target directory but not the second
md5deep -rX /tmp/.$targetDir0.hashes $targetDir1
echo

#example of error given on socket files:
#/tmp/geany_socket.4a02e4c4: No such device or address
#/tmp/geany_socket.eae42864: No such device or address
