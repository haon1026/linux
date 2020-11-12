#!/bin/bash

read -t 30 -p "Please input your name: " name
echo -e "\n"
echo "Name is $name"
echo -e "\n"

read -s -t 30 -p "Please enter your age: " age
echo -e "\n"
echo "Age is $age"
echo -e "\n"

read -n 1 -t 30 -p "Please select your gender[M/F]: " gender
echo -e "\n"
echo "Sex is $gender"
echo -e '\n'


# read 接收键盘输入
# -p 提示信息
# -t 指定等待秒数
# -n 只接受指定的字符数，就会执行（都不用输入回车）
# -s 隐藏输入的数据

#echo
# -e 支持反斜线控制的字符转换 (此时不管单双引号\转义都生效)
