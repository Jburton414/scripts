BEGIN{	#BEGIN BLOCK
		FS="/";
	 }
	 #{
	 #	script="find /tmp"
	 #	paths = system("bash -c '\''" script "'\''")
	 #}
	 {	#FILE NAME
		printf "\n" "File name:" "\n" $NF "\n\n"
	 }
	 {
		#BASE NAME
		
	 }
	 {  #FULL PATH
		printf "Full path:" "\n" $0 "\n\n"
	 }
	 {  #PARENTS
		print "The file has " NF-1 " parents:" 
		printf "/" "\n"		
		for (i = 2 ; i <= NF-1 ; i++){
			printf $(i) "\n"
			}
		printf "\n"
	 }
	 {  #PARENTS' FULL PATHS
		print "Paths to " NF-1 " parents:" 
		printf "/" "\n"		
		for (i = 2 ; i <= NF-1 ; i++){
				for(x = 1; x <= i ; x++){
					printf $(x) "/"
				}
			printf "\n"
			}
	 }
