/* YACC generates a bottom-up parser. This grammar validates expressions. */
%{
#include <stdio.h>
int yylex(void);
void yyerror(const char *s) { }
%}
%token NUM
%left '+'
%left '*'
%%
input: expr '\n' { puts("Accepted"); }
     ;
expr: NUM | expr '+' expr | expr '*' expr | '(' expr ')';
%%
int main(void) {
    printf("Enter expression: ");
    if (yyparse() == 0) return 0;
    puts("Rejected");
    return 1;
}
