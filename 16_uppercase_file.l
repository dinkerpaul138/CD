
%{
#include <stdio.h>
int count = 0;
%}
%option noyywrap
%%
[A-Z] {
    count++;
}
.|\n ;
%%
int main() {
    FILE *fp = fopen("input.txt", "r");
    if (fp == NULL) {
        printf("File not found\n");
        return 1;
    }
    yyin = fp;
    yylex();
    printf("Number of uppercase letters = %d\n", count);
    fclose(fp);
    return 0;
}
