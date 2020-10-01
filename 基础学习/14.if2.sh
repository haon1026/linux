#!/bin/bash

#备份

ntpdate asia.pool.ntp.org &>/dev/null
#同步系统时间

date=$(date +%y%m%d)
size=$(du -sh /etc)

if [ -d backup ] ; then
	echo "Date is : $date" > backup/log.txt
	echo "Size is : $size" >> backup/log.txt
	cd backup
	tar -zcf etc_$date.tar.gz /etc log.txt &>/dev/null
	rm -rf log.txt
else
	mkdir backup
	echo "Date is : $date" > backup/log.txt
	echo "Size is : $size" >> backup/log.txt
	cd backup
	tar -zcf etc_$date.tar.gz /etc log.txt &>/dev/null
	rm -rf log.txt
fi
