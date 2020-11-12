#!/bin/bash

#预定义参数

echo "The current process is $$"
#$$输出当前进程的进程号（PID）

find /root/ -name hello.sh &
echo "The last ont daemon process is $!"
#$!后台运行的最后一个进程的进程号


echo "The last commend return status is $?"
#$?是最后一次执行的命令的返回状态,0表示命令正确执行，非0表示执行失败
