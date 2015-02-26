#!/usr/bin/env bash

#http://getpocket.com/developer/docs/authentication

#define variables
consumerKey="36965-91e529cfab8e26bf9438f413"
requestToken=`curl --data "consumer_key=$consumerKey&redirect_uri=:"  https://getpocket.com/v3/oauth/request |\
		  awk -F '=' '{print $2}'`
accessToken=``		  

#print variables
printf "consumerKey\t"$consumerKey";\n">> pocket.config
printf "requestToken\t"$requestToken";\n">> pocket.config


curl --data "consumer_key=$36965-91e529cfab8e26bf9438f413&redirect_uri=:"  https://getpocket.com/v3/oauth/request
curl --data "consumer_key=36965-91e529cfab8e26bf9438f413&code=98a39102-094f-eadd-25b0-867085"  https://getpocket.com/v3/oauth/authorize
