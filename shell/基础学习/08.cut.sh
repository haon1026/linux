#!/bin/bash

#cut 字段提取
# -f 列号
# -d 分隔符
cut -f 2 student.txt

echo -e "\n------------\n"

cut -f 2,4 student.txt

echo -e "\n------------\n"

cut -d ":" -f 1,3 /etc/passwd

echo -e "\n------------\n"

#批量对指定用户进行操作
cat /etc/passwd | grep /bin/bash | grep -v root | cut -d ":" -f 1

#局限：空格分隔的没法正确截取
df -h | cut -d " " -f 1,3
