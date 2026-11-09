
%{
#include <stdio.h>
%}
%option noyywrap
%%
"+" {
    printf("Addition Operator\n");
}
"-" {
    printf("Subtraction Operator\n");
}
"*" {
    printf("Multiplication Operator\n");
}
"/" {
    printf("Division Operator\n");
}
"%%" {
    printf("Modulus Operator\n");
}
[0-9]+ {
    printf("Number: %s\n", yytext);
}
[ \t\n]+ ;
. {
    printf("Invalid character: %s\n", yytext);
}
%%
int main() {
    printf("Enter arithmetic expression:\n");
    yylex();
    return 0;
}
