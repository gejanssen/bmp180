/bin/sleep 5
rrdtool graph /home/gej/bmp180/pressure.png \
  -s 'now - 1 week' -e 'now' \
  -A -Y -X 0 \
  DEF:psea=/home/gej/bmp180/pressure.rrd:psea:AVERAGE \
  LINE2:psea#0000FF:
