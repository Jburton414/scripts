#!/bin/bash 

#Mplayer
yum install mplayer

#Codecs	
rpm --install -v http://www.mplayerhq.hu/MPlayer/releases/codecs/mplayer-codecs-20061022-1.i386.rpm
rpm --install -v http://www.mplayerhq.hu/MPlayer/releases/codecs/mplayer-codecs-extra-20061022-1.i386.rpm


