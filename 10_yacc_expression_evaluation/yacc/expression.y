%{
#include <stdio.h>
int yylex(void);
void yyerror(const char *s) { puts("Invalid expression"); }
%}
%token NUM
%left '+' '-'
%left '*' '/'
%%
input: expr '\n' { printf("Result = %d\n", $1); }
     ;
expr: NUM             { $$ = $1; }
    | expr '+' expr   { $$ = $1 + $3; }
    | expr '-' expr   { $$ = $1 - $3; }
    | expr '*' expr   { $$ = $1 * $3; }
    | expr '/' expr   {
        if ($3 == 0) { puts("Division by zero"); YYABORT; }
        $$ = $1 / $3;
      }
    | '(' expr ')'    { $$ = $2; }
    ;
%%
int main(void) { printf("Enter expression: "); return yyparse(); }
