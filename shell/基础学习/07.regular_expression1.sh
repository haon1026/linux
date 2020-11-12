#!/bin/bash

#正则表达式

# ”*“前一个字符匹配0次或任意次数
grep "a*" rule.txt
#匹配所有内容，包括空白行
grep "aa*" rule.txt
#匹配至少包含有一个a的行
grep "aaa*" rule.txt
#匹配至少包含有两个a的行
echo -e '\n--------------------\n'

# "."匹配除了换行符外任意一个字符
grep "a..d" rule.txt
#匹配a和d之间一定有一个字符的行
grep "a.*d" rule.txt
#匹配a和d之间有任意个字符的行  效果=通配符中的*
grep ".*" rule.txt
#匹配所有内容
echo -e '\n--------------------\n'

# "^"匹配行首，"$"匹配行尾
grep "^1" rule.txt
#匹配以"1"开头的行
grep "a$" rule.txt
#匹配以小写"a"结尾的行
grep -n "^$" rule.txt
#匹配空白行
echo -e '\n--------------------\n'

# "[]"匹配中括号中指定的任意一个字符，只匹配一个字符
grep "w[oO]r" rule.txt
#匹配字母w和r之间有一个o或者O的行
grep "[0-9]" rule.txt
#匹配任意一个数字
grep "^[a-z]" rule.txt
#匹配用小写字母开头的行
echo -e '\n--------------------\n'

# "[^]"匹配除中括号的字符以外的任意一个字符
grep "^[^a-z]" rule.txt	
#匹配不用小写字母开头的行
grep "^[^a-zA-Z]" rule.txt
#匹配不用字母开头的行
echo -e '\n--------------------\n'

# "\"转义符
grep "\.$" rule.txt
#匹配使用“.”结尾的行
echo -e '\n--------------------\n'
