#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define READING   0x01 // 0001
#define WRITING   0x02 // 0010
#define AS_BYTES  0x04 // 0100
#define AS_BLOCKS 0x08 // 1000
#define LOCKED    0x10 // 0001 0000

int main(void) {
    unsigned char device = 0; // 0000 0000

    // a
    // 0000 0000
    // 0000 0001
    // 0000 0100
    // 0001 0000
    // 0001 0101
    device = (READING | AS_BYTES | LOCKED); // 

    // b
    device = (WRITING | AS_BLOCKS | LOCKED);

    // // c
    // device = 
    // // d
    // device = 
    // e
    // 0001 0101
    // 1111 1110

    // 0001 0100
    // 0000 0010
    // 0001 0110

    device = (device & ~READING) | WRITING


    return EXIT_SUCCESS
}