#!/bin/bash

port=$(nmap -sT 192.168.0.3 | grep tcp | grep http | awk '{print $2}')
#使用nmap命令扫描服务器，并截取apache服务的状态，赋予变量port

if [ $port=="open" ] ; then
	echo "$(date) http is ok!" >> apache.log
else
	/etc/rc.d/init.d/httpd start &>/dev/null
	echo "$(date) restart httpd!" >> apache.log
fi
