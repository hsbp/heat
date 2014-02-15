#!/bin/sh
STATUS=$(curl -A 'hsbp-heat' -s http://vsza.hu/hacksense/status.csv | cut -f 3 -d ';')
if [ $STATUS -eq 0 ]; then
	beep -f 1200 -l 300 -d 100 -r 3
	/opt/heat/set.sh 0
fi
