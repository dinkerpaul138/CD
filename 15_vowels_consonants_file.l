
%{
#include <stdio.h>
%}
%option noyywrap
%%
[aeiouAEIOU] {
    printf("%s : Vowel\n", yytext);
}
[a-zA-Z] {
    printf("%s : Consonant\n", yytext);
}
[ \t\n]+ ;
. {
    printf("%s : Not an alphabet\n", yytext);
}
%%
int main() {
    printf("Enter characters:\n");
    yylex();
    return 0;
}
