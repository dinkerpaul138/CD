
%{
#include <stdio.h>
int words = 0;
int special = 0;
int lines = 0;
%}
%option noyywrap
%%
[A-Za-z0-9_]+ {
    words++;
}
[^A-Za-z0-9_ \t\n] {
    special++;
}
\n {
    lines++;
}
[ \t]+ ;
%%
int main() {
    FILE *fp = fopen("input.txt", "r");

    if (fp == NULL) {
        printf("File not found\n");
        return 1;
    }
    yyin = fp;
    yylex();
    printf("Words = %d\n", words);
    printf("Special characters = %d\n", special);
    printf("Lines = %d\n", lines);
    fclose(fp);
    return 0;
}
