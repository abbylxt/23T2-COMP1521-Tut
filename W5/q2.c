#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main(void) {
    // 127
    int dec = 127; // = 
    // hex counting: 0 1 2 ... 9 A B C D E F
    int hex = 0x127; // = 295
    // oct counting: 0 1 2 ... 8
    int oct = 0127; // = 87
    // binary = 0 1
    int binary = 0b1010; // 10 (not portable) (do not to use in your code)

    printf("%d\n", dec);
    printf("%d\n", hex);
    printf("%d\n", oct);
    printf("%d\n", binary);
    printf("0x%04X, 0%o\n", hex, oct);

    return EXIT_SUCCESS;
}













    // //
    // int dec = ; 
    // // hex counting: 0 1 2 ... 9 A B C D E F
    // int hex = 0x7F; // 0x70 =  * 16^1 =
    //                 // 0x0F =  * 16^0 = 
    //                 //  = 
    // // oct counting: 0 1 2 ... 8
    // int oct = 0177; // 0100  =  * (8 ^ 2) = 
    //                 // 0070  =  * (8 ^ 1) = 
    //                 // 0007  =  * (8 ^ 0) = 
    // int binary = 0b1111111; // 2 (not portable) (do not to use in your code)
    //                      // 0b1000 =  * 2^3 = 
    //                      // 0b0100 =  * 2^2 = 
    //                      // 0b0010 =  * 2^1 = 
    //                      // 0b0001 =  * 2^0 = 
    //                      // total =  = 
