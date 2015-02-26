#!/bin/bash 



function installPandoraClient {
	
	pip install pandora_client
	
	pandora_client config
    
}

installPandoraClient

