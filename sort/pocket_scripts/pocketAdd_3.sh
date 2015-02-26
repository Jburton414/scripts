#!/usr/bin/env bash

awk 'BEGIN { 
		FS = "\t"		
		printf "Enter the URL: "
		getline url < "-"
		}
	{#MIDDLE	
			print $2 "\t"
			split($2, configArray, "\t")
		}
	END{
		print "url\t\t" url
		}' ./pocket.config

#curl --data "consumer_key=$consumerKey&redirect_uri=:"  https://getpocket.com/v3/oauth/request

