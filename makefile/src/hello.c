#include "head.h"

int main()
{	
	int a = 10, b = 2;
	printf("%d + %d = %d\n", a, b, add(a,b));
	printf("%d - %d = %d\n", a, b, sub(a,b));
	printf("%d * %d = %d\n", a, b, mul(a,b));
	printf("%d / %d = %d\n", a, b, div1(a,b));
	printf("%d %% %d = %d\n", a, b, mod(a,b));

	return 0;
}
