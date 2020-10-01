#!/bin/bash 
#!/告诉系统该脚本使用什么解释器来执行

#the first program

echo "hello world"

#cat -A 可以看出隐藏字符，linux下的回车换行是$，windows是^M$, 转换命令dos2unix,unix2dos

#shell脚本运行的两种方法：
#1.作为可执行程序：chmod +x 文件名
#2.作为解释器参数：/bin/bash 文件名
