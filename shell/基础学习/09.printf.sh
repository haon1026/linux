#!/bin/bash

# printf '输出类型输出格式' 输出内容

# 输出类型
# %ns  : 字符串型，输出n个字符
# %ni  : 整数型，输出n个整数
# %m.nf: 浮点型， %8.2f代表输出8位数，其中2位是小数，6位是整数

# 输出格式
# \a : 输出警告声音
# \b : 输出退格键
# \f : 清除屏幕
# \n : 换行
# \r : 回车
# \t : 水平制表符
# \v : 竖直制表符


printf %s 1 2 3 4 5 6
echo -e "\n---------------"

printf %s %s %s 1 2 3 4 5 6
echo -e "\n---------------"

printf '%s %s %s' 1 2 3 4 5 6
echo -e "\n---------------"

printf '%s %s %s\n' 1 2 3 4 5 6
echo -e "\n---------------"
#三个为一组输出

printf '%s' $(cat student.txt)
echo -e "\n---------------"
#不调整格式输出

printf '%s\t %s\t %s\t %s\t\n' $(cat student.txt)
echo -e "\n---------------"
#调整格式输出
