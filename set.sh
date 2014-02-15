#!/bin/sh
if [ $1 -eq 1 ]; then
	beep -f 1500 -l 200
	beep -f 1900 -l 500
else
	beep -f 1900 -l 200
	beep -f 1500 -l 500
fi
python -c "import serial; serial.Serial('/dev/ttyS0').setDTR($1)"
