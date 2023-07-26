// print out contents of ~/.diary

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>


void chmod_if_public_write(char *pathname) {
    struct stat s;
    if (stat(pathname, &s) != 0) {
        perror(pathname);
        exit(1);
    }

    mode_t mode = s.st_mode;

    // public writable
    // mode & S_IWOTH
    if ((mode & 0x02) != 0) {
        mode = mode & ~0x02;
        if (chmod(pathname, mode) != 0) {
            perror(pathname);
            exit(2);
        }
        printf("removing public write from %s\n", pathname);
    } else {
        // not public writable
        printf("%s is not publically writable\n", pathname);
    }

}


int main(int argc, char *argv[]) {
    for (int arg = 1; arg < argc; arg++) {
        chmod_if_public_write(argv[arg]);
    }
    return 0;
}