#!/bin/env bash

curl -d '{"auth":{"passwordCredentials":{"username": "admin",
"password": "secret"},"tenantName": "customer-A"}}'
-H "Content-Type: application/json" http://192.168.100.100:5000/v2.0/tokens

curl -d '{"consumer_key":"1234-abcd1234abcd1234abcd1234","redirect_uri":"pocketapp1234:authorizationFinished"}' -H "Content-Type: application/json; charset=UTF-8"

    
POST /v3/oauth/request HTTP/1.1
Host: getpocket.com
Content-Type: application/json; charset=UTF-8
X-Accept: application/json

{
    "consumer_key": "1234-abcd1234abcd1234abcd1234",
    "redirect_uri": "pocketapp1234:authorizationFinished"
}





POST /v3/oauth/request HTTP/1.1
Host: getpocket.com
Content-Type: application/x-www-form-urlencoded; charset=UTF-8
X-Accept: application/x-www-form-urlencoded

consumer_key=36965-91e529cfab8e26bf9438f413&
redirect_uri=pocketapp1234:authorizationFinished


curl --data "consumer_key=36965-91e529cfab8e26bf9438f413&redirect_uri=:"  getpocket.com/v3/oauth/request
