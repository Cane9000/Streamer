#ffmpeg  -re -i /media/pi/9601-27A0/video/E3.mp4 -vcodec libx264 -c:a aac -ar 44100 -s 300:600 -b:v 500k -bufsize 1000k -f rtp_mpegts rtp://192.168.1.69:1234
ffmpeg  -re -i /media/pi/9601-27A0/video/E2.mp4   -s 500x500 -b 2M -f rtp_mpegts rtp://192.168.1.69:1234
