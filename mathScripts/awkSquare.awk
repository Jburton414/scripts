#!/bin/awk -f
#http://www.grymoire.com/Unix/Scripts/awk_ask_for_square.awk
BEGIN {
    print "type a number";
}
{
    print "The square of ", $1, " is ", $1*$1;
    print "type another number";
}

