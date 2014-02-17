#!/bin/sh
if [ $1 -eq 1 ]; then
	beep -f 1500 -l 200
	beep -f 1900 -l 500
	CMD=ON
else
	beep -f 1900 -l 200
	beep -f 1500 -l 500
	CMD=OFF
fi
echo $CMD | nc localhost 4347
