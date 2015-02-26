#!/bin/bash

loop=true
until !$loop; do
    echo -n "Do you want to block advertisements and potential malware with a hosts file? [y/n] "
    read input
    if [ -n "`echo "$input" | grep -i [ny]`" ]; then # If theres a y or n in the answer
        if [ -n "`echo "$input" | grep -i y`" -a -n "`echo "$input" | grep -i n`" ]; then # If theres a y but no n
            echo "Bingo"
        fi
    loop=false #Finish the loop no matter which answer
    fi
echo -n ""
done
