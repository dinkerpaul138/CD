%{
#include <stdio.h>
%}
%%
"//".*                    { printf("Comment: %s\n", yytext); }
[0-9]+(\.[0-9]+)?         { printf("Constant: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*    { printf("Identifier/keyword: %s\n", yytext); }
"=="|"!="|"<="|">="|"+"|"-"|"*"|"/"|"="|"<"|">" {
                            printf("Operator: %s\n", yytext); }
[ \t\r\n]+                ;
.                         { printf("Special: %s\n", yytext); }
%%
int main(void) { yylex(); return 0; }
int yywrap(void) { return 1; }
