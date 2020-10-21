#include <stdio.h>
void printDown(int n)
{
    printf("%d ", n);
    if (n > 1)
        printDown(n-1);
}

