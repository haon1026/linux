#!/bin/bash

# awk '条件1{动作1} 条件2{动作2}...' 文件名
# 条件: 一般使用关系表达式作为条件 : x>10   x>=10   x<=10
# 动作：格式化输出；流程控制语句

#awk处理数据时是先读入第一行数据，然后把这一行的所有内容赋给变量$0代表整个行所有数据，$1代表第一列
#$2代表第二列，然后再判断条件执行动作，之后在读入下一行重复执行上述操作
#综上，awk是先提取行再截取列

#默认识别的分割符是制表符或者空格

awk '{printf $2 "\t" $4 "\n"}' student.txt
echo -e "\n----------------"

df -h | awk '{printf $1 "\t" $5 "\t" $6 "\n"}'
echo -e "\n----------------"

#截取sda1分区使用率
df -h | grep sda1 | awk '{print $5}' | cut -d '%' -f 1
echo -e "\n----------------"

#BEGIN
awk 'BEGIN{printf "This is a shell script\n"}{printf $2 "\t" $3 "\n"}' student.txt
echo -e "\n----------------"

#END
awk 'END{print "The end"}{printf $2 "\t" $3 "\n"}' student.txt
echo -e "\n----------------"

#FS内置变量 定义分隔符
cat /etc/passwd | grep "/bin/bash" | awk 'BEGIN{FS=":"}{print $1 "\t" $3}'
echo -e "\n----------------"

#关系运算符
cat student.txt | grep -v Name | awk '$4>=80{print $2}'

#print 默认带换行符
#printf 不带换行符
