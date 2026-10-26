%{
#include <stdio.h>
%}
%%
"boy"|"girl"|"dog"|"cat"|"student" { puts("Noun"); }
"run"|"eat"|"play"|"write"|"read"  { puts("Verb"); }
[a-zA-Z]+                            { puts("Unknown word"); }
[ \t\r\n]+ ;
. ;
%%
int main(void) { printf("Enter a word: "); yylex(); return 0; }
int yywrap(void) { return 1; }
