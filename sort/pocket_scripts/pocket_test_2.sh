#!/usr/bin/env bash
	
json=`awk 'BEGIN { FS=";" }
		{
			split($1, configArray, "\t")
			printf configArray[1]"\t" #field titles
			printf configArray[2]"\t" #field values
		}' ./pocket.config`
		
echo  -e $json
