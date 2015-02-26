#!/usr/bin/env bash
read -p "Enter directory: " directory
[ ! -d $directory ] && ( echo "$directory does not exist. Creating ... "; mkdir -p $directory; stat $directory; exit 1 )
