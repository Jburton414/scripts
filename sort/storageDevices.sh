#!/usr/bin/env bash

#storage devices (hdd, flash, cd, block device, etc.)

blkid
mount
fdisk -l
parted -l
cat /proc/mounts

#i.e. /dev/disk/by-path 
find /dev/ -name *by-* -exec tree {} \;

#to determine which device a flash drive is after plugging it in try.. 
dmesg | tail
#or if it is already plugged in this may help 
dmesg | grep [U,u][S,s][B,b]
