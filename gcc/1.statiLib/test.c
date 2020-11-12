#include <stdio.h>
#include "mymath.h"   //要引入与静态库配套的头文件，不然编译时加-Wall选项会报警告

int main()
{
	int a = 14;
	int b = 7;

	printf("%d + %d = %d\n", a, b, add(a, b));
	printf("%d - %d = %d\n", a, b, sub(a, b));
	printf("%d * %d = %d\n", a, b, mul(a, b));
	printf("%d / %d = %d\n", a, b, div(a, b));

	return 0;
}

//gcc test.c lib/libmymath.a -Wall -o test -I inc/
//编译时test.c在要在前，静态库在后
