#!/usr/bin/env bash
	
awk 'BEGIN { FS=";" }
		{
			split($1, configArray, "\t")
			printf configArray[1] "=" configArray[2] "\n"
		}' ./pocket.config
