#include <stdio.h>

int main(void) {
    int x;
    printf("Enter a number: ");
    scanf("%d", &x);

    // if (x > 100 && x < 1000)
    if1:
    if (x <= 100) goto else1;
    if (x >= 1000) goto else1;

    printf("medium\n");
    
    goto end;
    else1:
    printf("small/big\n");
    
    end:
}