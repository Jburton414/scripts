#!/usr/bin/env bash

awk 'BEGIN {
		FS = "/"
		OFS = "\n"
		#RS = "\n"
	}
	{
		#for (NR = 2; NR <= NR; NR++)
		print $0
		#printf $2 "\t" $3 "\n"
	}' /tmp/pathNames.txt
