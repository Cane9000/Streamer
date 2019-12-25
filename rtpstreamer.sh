#ffmpeg  -re -i /media/pi/9601-27A0/video/E3.mp4 -vcodec libx264 -c:a aac -ar 44100 -s 300:600 -b:v 500k -bufsize 1000k -f rtp_mpegts rtp://192.168.1.69:1234
#ffmpeg  -re -i /media/pi/9601-27A0/video/SW.mp4 -c:v libx264 -preset superfast -b 1.5M -f rtp_mpegts rtp://192.168.1.69:1234
ffmpeg   -i udp://192.168.1.74:2000  -c:v libx264 -preset superfast -b 1.5M -f rtp_mpegts rtp://192.168.1.69:1234
