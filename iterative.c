#include <stdio.h>
void printDown(int n)
{
    while (1)
    {
        printf("%d", n);
        if (n > 1)
            n--;
        else
            break;
    }
}
