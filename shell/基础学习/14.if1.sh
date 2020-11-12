#!/bin/bash

#统计根分区使用率

rate=$(df -h | grep "/dev/sda1" | awk '{print $5}' | cut -d "%" -f 1)

if [ $rate -le 80 ] ; then
	echo "/dev/sda1 is idle"
fi
