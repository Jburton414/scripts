#!/bin/bash 



function systemInfo {
	
	uname -a
	
	cat /proc/version
	
	#for rhel releases
	#similar but different output formats and amounts of information
	rpm -qi --whatprovides /etc/redhat-release 
	rpm -q --whatprovides /etc/redhat-release
    cat /etc/redhat-release
    
    cat /etc/issue
    
}

systemInfo #> file.txt

