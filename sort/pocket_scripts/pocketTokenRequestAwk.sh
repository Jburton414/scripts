#!/bin/env bash

awk 'BEGIN{

		FS="="
		
		consumerKey="36965-91e529cfab8e26bf9438f413"
		requestResponse = `curl --data "consumer_key=$36965-91e529cfab8e26bf9438f413&redirect_uri=:"  https://getpocket.com/v3/oauth/request)`
		print requestResponse

}'
