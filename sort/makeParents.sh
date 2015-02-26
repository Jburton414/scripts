#!/usr/bin/env bash

#new file name, new location, or new file name & location
#if new file name and same location use cp
#if new location and same file name new path is required
#if new location and new file name new path is required & new name is required

read -p "Enter target: " target
read -p "Enter destination: " dest
#read -p "Enter new file name(s): " newNames

if [ ! -d $dest ]
then
   mkdir -p $dest
   cpOutput=`cp $target $dest`
fi


