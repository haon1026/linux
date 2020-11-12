#!/bin/bash

#数值运算符

#数值运算方法1：declare声明
aa=11
bb=22
declare -i cc=$aa+$bb
echo $cc
declare -p aa bb cc
#此时cc是整数型

echo -e "\n"

#数值运算方法2：expr或数值运算工具
aa=11
bb=22
dd=$(expr $aa + $bb)
echo $dd
declare -p dd
#”+“号两侧必须有空格
#此时dd是字符串型

echo -e "\n"

#数值运算方法3：$((运算式)) 或 $[运算式]
aa=11
bb=22
ff=$(( $aa+$bb ))
gg=$[$aa+$bb]
echo $ff
echo $gg
declare -p ff gg
#此时ff gg都是字符串型


#echodeclare声明变量类型
# - ：给变量设定类型属性
# + ：取消变量的类型属性
# -i：将变量声明为整数型
# -x: 将变量声明为环境变量
# -p：显示指定变量的被声明类型
