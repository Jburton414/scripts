BEGIN{	#BEGIN BLOCK
		FS="/";
	}
	{	
		printf "\n" "File name:" "\n" $NF "\n\n"
		printf "Full path:" "\n" $0 "\n\n"
		print NF-1 " parents:" 
		printf "root" "\n" "/" "\n\n"		
		for (i = 2 ; i <= NF-1 ; i++){
			printf $(i) "\n"
				for(x = 1; x <= i ; x++){
					printf $(x) "/"
				}
			printf "\n\n"
			}
	}
