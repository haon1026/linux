#!/bin/bash

# sort 排序命令
# sort [选项] 文件名
# 选项：
# -f : 忽略大小写
# -n : 以数值型进行排序，默认使用字符串型排序
# -r : 反向排序
# -t : 指定分隔符，默认分隔符是制表符
# -k n,m ：按照指定的字段范围排序。从第n字段开始，m字段结束（默认到行尾）

sort /etc/passwd
echo -e "-----------"

sort -r /etc/passwd
echo -e "-----------"

sort -t ":" -k 3,3 /etc/passwd
echo -e "-----------"
#会以第三字段的首字符大小排序

sort -n -t ":" -k 3,3 /etc/passwd
echo -e "-----------"
#以数值大小排序
