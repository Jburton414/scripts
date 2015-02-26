#!/usr/bin/env bash

#Prints the first field of the passwd file, showing all of the system users.
awk -F":" '{ print $1 }' /etc/passwd
