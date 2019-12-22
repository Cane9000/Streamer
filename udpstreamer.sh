#!/bin/bash

#UDP/RTP TEST


#STREAMING
ffmpeg     -re -i /media/pi/9601-27A0/video/E3.mp4 -vcodec libx264 -ac 2 -ar 44100 -s 480:320 -b 400k -f mpegts udp://192.168.1.69:1234


