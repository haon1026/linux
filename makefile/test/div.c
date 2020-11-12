#include <stdio.h>

int div1(int a, int b)
{
	return a / b;
}

int main()
{
	int a = 10, b = 2;
	printf("%d / %d = %d\n", a, b, div1(a, b));
	
	return 0;
}
