#!/usr/bin/env bash

awk 'BEGIN { 
		FS = ";"
		printf "Enter the URL: "
		getline url < "-"
		}
	{#TOKENS	
		split($1, configArray, "\t")
		{
			#printf configArray[1] "\t"
			print configArray[2]
		};
		}
	END{
		print url
		}' ./pocket.config

#curl --data "consumer_key=$consumerKey&redirect_uri=:"  https://getpocket.com/v3/oauth/request
