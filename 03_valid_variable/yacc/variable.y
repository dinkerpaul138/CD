%{
#include <stdio.h>
int yylex(void);
void yyerror(const char *s) { puts("Invalid variable"); }
%}
%token VALID INVALID
%%
input: VALID '\n'   { puts("Valid variable"); }
     | INVALID '\n' { puts("Invalid variable"); }
     ;
%%
int main(void) { printf("Enter variable: "); return yyparse(); }
