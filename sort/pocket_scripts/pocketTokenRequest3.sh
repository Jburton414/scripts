#!/bin/env bash

#set var $consumerKey
consumerKey="36965-91e529cfab8e26bf9438f413"
accessToken=$(`curl --data "consumer_key=$consumerKey&redirect_uri=:"  https://getpocket.com/v3/oauth/request`)

echo $consumerKey >> pocket.config
echo $accessToken >> pocket.config
#make request




