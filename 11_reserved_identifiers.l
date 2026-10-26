%{
#include <stdio.h>
%}
%%
"int"|"float"|"char"|"if"|"else"|"while"|"return" {
    printf("Reserved word: %s\n", yytext);
}
[a-zA-Z_][a-zA-Z0-9_]* { printf("Identifier: %s\n", yytext); }
[0-9]+                 { printf("Constant: %s\n", yytext); }
[ \t\r\n]+             ;
.                      { printf("Symbol: %s\n", yytext); }
%%
int main(void) { yylex(); return 0; }
int yywrap(void) { return 1; }
