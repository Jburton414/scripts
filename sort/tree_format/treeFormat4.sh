BEGIN{	#BEGIN BLOCK
		FS="/";
		
	}
	{	#BLOCK
		#print $0
	}
	{	#BLOCK
		#if ($1 ~ /─/) print 
	}
	{	#BLOCK - parse tree output file
		if (FNR == 1) 
			print NR "\t" $0 
		else if ($1 ~ /├──/ ) 
			print NR "\t" $1
		else if ($1 ~ /└──/) 
			print NR "\t" $1
		else print NR
	}
	{	#BLOCK
		#if ($1 ~ // ) 
		#	print $1;
		#else if ($1 ~ /└──/) print
		#else print NR
	}
END {	#END BLOCK
		print "________________________________________________________"
		print NR,"Records Processed"
	}
