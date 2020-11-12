#!/bin/bash

#反引号与$()：引用系统命令
echo `ls`
echo $(date)

#单引号：所有字符原样输出，无特殊含义
#双引号：“$”：调用变量的值  “` `”（反引号）：引用命令 “\“：转义符
name=abc
echo '$name'
echo "$name"
echo '$(date)'
echo "$(date)"


