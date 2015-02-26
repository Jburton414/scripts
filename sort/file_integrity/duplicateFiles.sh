#!/usr/bin/env bash

#this finds duplicate files within the same directory using md5sum & does not make a tmp file (i assume)

echo
read -p "Enter the full path of the directory you would like to check for duplicate files." targetDir
#echo
#md5deep -r $targetDir | grep `md5deep -r $targetDir | awk '{printf $1 "\n";}' | uniq -d`
echo
md5deep -r $targetDir 2>/dev/null | awk 'BEGIN{
								FS="  "
								}{
								
								#print $1
								#if ($1 ~ /pattern/) print
								if (a[$1]++<=NF) print
								
								}'
