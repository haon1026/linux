#include <stdio.h>

int mod(int a, int b)
{
	return a % b;
}

int main()
{
	int a = 10, b = 2;
	printf("%d %% %d = %d\n", a, b, mod(a, b));
	
	return 0;
}
