// print out contents of $HOME/.diary

#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int main(void) {
    char *home_path = getenv("HOME");

    if (home_path == NULL) {
        home_path = ".";
    }

    const char *diary_path = ".diary"; 

    // printf("%s%s \n", home_path, diary_path);

    int total_len = strlen(home_path) + strlen(diary_path) + 2;

    char *path = malloc(total_len);

    snprintf(path, total_len, "%s/%s", home_path, diary_path);
    // printf("%s\n", path);

    FILE *in = fopen(path, "r");
    
    if (in == NULL) {
        perror(path);
        exit(1);
    }

    int letter;
    while ((letter = fgetc(in)) != EOF) {
        fputc(letter, stdout);
    }


    free(path);
    fclose(in);
}