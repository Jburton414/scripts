#!/bin/env bash

#make hashes of files recursivly & output to file then compare to the 
#hashes of another directory

#set tmp directory
tmp=/tmp/.hashes
#mkdir $tmp

#set target directories
#targetDir0
read -p "Enter the full path to the first directory: " targetDir0
echo $targetDir0
#targetDir1
read -p "Enter the full path to the second directory: " targetDir1
echo $targetDir1

#first directory
#this outputs the hashes and the paths of the files they correspond to
md5deep -r $targetDir0
md5deep -r $targetDir0 > /tmp/.hashes/$targetDir1_$date_MD5DEEP
#this outputs only the hashes of the files within the directory
md5deep -r $targetDir0 | awk '{print $1}'
md5deep -r $targetDir0 | awk '{print $1}' > /tmp/.hashes/$targetDir1_$date_MD5DEEPHASHES
#this outputs only the paths of the files within the directory
md5deep -r $targetDir0 | awk '{print $2}'
md5deep -r $targetDir0 | awk '{print $2}' > /tmp/.hashes/$targetDir1_$date_MD5DEEPPATHS
#this outputs the paths of the files (including the directory) in a format similar to md5sum
find $targetDir0
#this outputs a nicely formatted listing of the files in the directory
tree -a  $targetDir0

#second directory 
#this outputs the hashes and the paths of the files they correspond to
md5deep -r $targetDir1
md5deep -r $targetDir1 > /tmp/.hashes/$targetDir1_$date_MD5DEEP
#this outputs only the hashes of the files within the directory
md5deep -r $targetDir1 | awk '{print $1}'
md5deep -r $targetDir1 | awk '{print $1}' > /tmp/.hashes/$targetDir1_$date_MD5DEEPHASHES
#this outputs only the paths of the files within the directory
md5deep -r $targetDir1 | awk '{print $2}'
md5deep -r $targetDir1 | awk '{print $2}' > /tmp/.hashes/$targetDir1_$date_MD5DEEPPATHS
#this outputs the paths of the files (including the directory) in a format similar to md5sum
find $targetDir1
#this outputs a nicely formatted listing of the files in the directory
tree -a  $targetDir1

#this redirects the output of md5deep to a file in /tmp/.hashes/
#md5deep -r $targetDir0 > /tmp/$taretDir0_hashes_date 
#awk '{print $1}' /tmp/hashes3
#md5deep -r $targetDir1 > /tmp/hashes4 
#awk '{print $1}' /tmp/hashes4


