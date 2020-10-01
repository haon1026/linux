#!/bin/bash

#$*与$#的区别

for i in "$*"
	do
		echo "The parameter is: $i"
	done
#$*中的所有参数看成是一个整体，所以for循环只会循环一次


x=1
for y in "$@"
	do
		echo "The parameter$x is: $y"
		x=$(($x+1))
	done
#$@中的每个参数都看成是独立的，所有”$@“中有几个参数，就会循环几次
