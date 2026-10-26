%{
#include <stdio.h>
int count = 0;
%}
%%
[A-Z] { count++; }
.|\n  ;
%%
int main(int argc, char **argv) {
    if (argc != 2 || !(yyin = fopen(argv[1], "r"))) {
        fprintf(stderr, "Usage: %s file.txt\n", argv[0]); return 1;
    }
    yylex();
    printf("Uppercase letters = %d\n", count);
    fclose(yyin); return 0;
}
int yywrap(void) { return 1; }
