#include <stdio.h>

int mul(int a, int b)
{
	return a * b;
}

int main()
{
	int a = 10, b = 2;
	printf("%d * %d = %d\n", a, b, mul(a, b));
	
	return 0;
}
