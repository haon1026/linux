#!/bin/bash

for i in 1,2,3,4,5,6 ; do
	echo $i
done
#输出1，2，3，4，5，6

for i in 1 2 3 4 5 6 ; do
	echo $i
done
#输出
# 1 
# 2
# 3
# 4
# 5
# 6

#只要是空格或换行符隔开的，都算是一个元素
