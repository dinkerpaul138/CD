%{
#include "y.tab.h"
%}
%%
[a-zA-Z][a-zA-Z0-9]*  { return VALID; }
\n                    { return '\n'; }
.                     { return INVALID; }
%%
int yywrap(void) { return 1; }
