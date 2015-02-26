#!/bin/bash 



function packageInfo{

	read package
	which $package
	whereis $package
	
	yum search $package
	yum search all $package
    
}

packageInformation

