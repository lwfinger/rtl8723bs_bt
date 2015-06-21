#!/bin/bash
#
# Shell script to install Bluetooth firmware and attach BT part of
# RTL8723BS
#
TTY=/dev/ttyS4

if [ -f /lib/firmware/rtlbt/rtlbt_config ];
then
	echo "Firmware already loaded"
else
	mkdir -p /lib/firmware/rtlbt/
	cp rtlbt_* /lib/firmware/rtlbt/.
fi
./rtk_hciattach -n -s 115200 $TTY rtk_h5 > hciattach.txt 2>&1 &

