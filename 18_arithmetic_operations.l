%{
#include <stdio.h>
%}
%%
"+" { puts("Addition operator"); }
"-" { puts("Subtraction operator"); }
"*" { puts("Multiplication operator"); }
"/" { puts("Division operator"); }
[0-9]+ { printf("Number: %s\n", yytext); }
[ \t\r\n]+ ;
. { printf("Invalid symbol: %s\n", yytext); }
%%
int main(void) { printf("Enter expression: "); yylex(); return 0; }
int yywrap(void) { return 1; }
