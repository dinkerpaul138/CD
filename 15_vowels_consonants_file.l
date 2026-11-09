
%{
#include <stdio.h>
int vowels = 0;
int consonants = 0;
%}
%option noyywrap
%%
[aeiouAEIOU] {
    vowels++;
}
[a-zA-Z] {
    consonants++;
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
    printf("Vowels = %d\n", vowels);
    printf("Consonants = %d\n", consonants);
    fclose(fp);
    return 0;
}
