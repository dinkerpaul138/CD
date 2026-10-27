%{
#include "y.tab.h"
%}
%%
[0-9]+  { return NUM; }
[ \t\r] ;
\n      { return '\n'; }
.       { return yytext[0]; }
%%
int yywrap(void) { return 1; }
