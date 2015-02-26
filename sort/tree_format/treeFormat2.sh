#!/bin/bash

awk 'BEGIN {
	
	}
	{
		for (i = 1; i <= NF; i++)
			{
				count++
				print count
				
				#print $0
				split($0, pathArray, "/")
				print pathArray				
				#print pathArray[2] pathArray[3]
				
				#for
			}			
	}' /tmp/pathNames.txt
