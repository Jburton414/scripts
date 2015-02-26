#!/usr/bin/env bash

echo 1 2 3 4 5 6 7 8 9 10 |\
awk 'BEGIN{ FS = " " }
	{
		for (i = 1; i <= NF; i++) {
			total = total+$i 
			#print total #prints total every time a number is added
		}
	}; END { print total }'
