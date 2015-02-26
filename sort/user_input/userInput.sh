#!/bin/sh
#http://ubuntuforums.org/showthread.php?t=1535892
echo "do you want to continue?"
f_Choice () {
  # Reads and interprets a single keypress.
  OLD_STTY=$(stty -g)
  stty -icanon iuclc -echo min 1 time 0
  while	:
  do
	U_ANSWER=$(dd bs=1 count=1 2>/dev/null)
	case $U_ANSWER in
	  $1|$2) 
		printf "%s\n" "$U_ANSWER" 
		RET_VAL=0
		test x"$U_ANSWER" = x"$2" && RET_VAL=1
		stty "$OLD_STTY"
		return $RET_VAL
		;;
	  *)
		;;
	esac
  done
