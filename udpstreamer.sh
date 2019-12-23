#!/bin/bash

#UDP/RTP TEST


#STREAMING
ffmpeg     -re -i /media/pi/9601-27A0/video/E3.mp4 -c:v mpeg2video -f mpegts udp://192.168.1.69:2002


