#include <stdlib.h>
#include <time.h>
#include <stdio.h>

/**
* main - print if the number is postive, zero, or negative
*
* Description: using the main function
* this program prints "Programming is positive, zero, or negative
* Return: 0
*/
int main(void)
{
int n;

srand(time(0));
n = rand() - RAND_MAX / 2;
  /* your code goes there */
if ((n % 5) >5)
{
        printf("Last digit of %d is %d and is greater than 5 and not 0", n,n%5);
}
else if ((n % 10) == 0)
{
        printf("Last digit of %d is 0 and is 0", n);
}
else if (n % 5 <= 5)
{
        printf("Last digit of %d is %d and is less than 6 and not 0", n,n%5);
}
return (0);
}