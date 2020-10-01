#!/bin/bash

#批量添加用户

read -t 30 -p "Please input user name: " name
read -t 30 -p "Please input the number of users: " num
read -t 30 -p "please input the passwd of users: " pass

if [ -n "$name" -a -n "$num" -a -n "$pass" ] ; then
	y=$(echo $num | sed 's/[0-9]//g')
	if [ -z "$y" ] ; then
		for (( i=1;i<=num;i++ )) ; do
			useradd $name$i &>/dev/null
			echo $pass | passwd --stdin $name$i &>/dev/null
		done
	fi
fi
