#!/bin/bash

ls *.sh > ls.log

x=1
for i in $(cat ls.log) ; do
	echo $x
	x=$(( $x+1 ))
done
rm -f ls.log

#适用于批量解压缩等类似操作
