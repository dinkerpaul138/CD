%{
#include <stdio.h>
%}
%%
[aeiouAEIOU]+ { puts("Vowels only"); }
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]+ { puts("Consonants only"); }
[a-zA-Z]+ { puts("Mixed vowels and consonants"); }
[ \t\r\n]+ ;
. { puts("Invalid input"); }
%%
int main(void) { printf("Enter letters: "); yylex(); return 0; }
int yywrap(void) { return 1; }
