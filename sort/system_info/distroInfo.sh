#!/bin/bash 

#distroInfo function

function systemInfo {
	
	echo 	
	echo "output of: uname -a ..." 
	echo "======================="
	
		uname -a
	
	echo
	echo "output of: cat /proc/version ..."
	echo "================================"
	
		cat /proc/version
	
	echo	
	echo "output of: rpm -qi --whatprovides /etc/redhat-release ..."
	echo "========================================================="
	
		rpm -qi --whatprovides /etc/redhat-release
	
	echo
	echo "output of: rpm -q --whatprovides /etc/redhat-release ..."
	echo "========================================================"
	
		rpm -q --whatprovides /etc/redhat-release
	
	echo
	echo "output of: cat /etc/redhat-release ..."
	echo "======================================"
	
		cat /etc/redhat-release

		#rpm -q --whatprovides /etc/issue
		#rpm -qi --whatprovides /etc/issue
	
	echo       	
	echo "output of: cat /etc/issue ..."
	echo "============================="
		cat /etc/issue
    }

systemInfo #>> file.txt

exit
