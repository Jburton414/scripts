#!/usr/bin/env bash

awk 'BEGIN { 
		FS = ";"
		printf "Enter the URL: "
		getline url < "-"
		}
	{#TOKENS	
		split($1, configArray, "\t")
		{
			printf configArray[1] "\t"
			print configArray[2]
			printf "curl --data "consumer_key=
		};
		}
		{
		print url
		print "curl --data " configArray
		}' ./pocket.config

#curl --data "consumer_key=$consumerKey&redirect_uri=:"  https://getpocket.com/v3/oauth/request

consumerKey     36965-91e529cfab8e26bf9438f413
appToken        754a2222-b678-b989-e273-bfc37f



curl --data "{"url":"http:\/\/www.google.com\/", "title":"search engine", "consumer_key":"36965-91e529cfab8e26bf9438f413", "access_token":"754a2222-b678-b989-e273-bfc37f"}" https://getpocket.com/v3/add

POST /v3/get HTTP/1.1
Host: getpocket.com
Content-Type: application/json

curl --data '{"consumer_key":"36965-91e529cfab8e26bf9438f413","access_token":"754a2222-b678-b989-e273-bfc37f","count":"10","detailType":"complete"}' https://getpocket.com/v3/add
