#!/bin/bash

#PLATFORM SCRIPT

#GET CONFIG DATA FROM HTML DIR TO CONFIG FILE REMOVING CARRIAGE RETURNS 
#sed 's/\r//' /var/www/html/newfile.txt > /var/www/html/config.txt
#READ CONGIF
dos2unix www-config.txt
. /var/www/html/www-config.txt;

#PLAYLIST
ls /media/pi/9601-27A0/video/E*.mp4 -t > flist.txt;sed -i s/^/file\ \'/g flist.txt; sed -i  s/.mp4/.mp4\'/g /var/www/html/flist.txt
x=0
>playlist.txt
while [ $x -le $(($LOOP-1)) ]; do cat flist.txt>>playlist.txt; x=$(( $x + 1 ))
done

#STREAMING
ffmpeg     -re -f concat -safe 0 -i playlist.txt -ac 2 -ar 44100 -s $W:$H  -b $BIT -f flv "rtmp://a.rtmp.youtube.com/live2/$KEY"


