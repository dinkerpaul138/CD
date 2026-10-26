%{
#include <stdio.h>
int words = 0, special = 0, lines = 0;
int last_char = 0;
%}
%%
[A-Za-z0-9_]+ { words++; last_char = 1; }
\n             { lines++; last_char = 0; }
[^A-Za-z0-9_ \t\n] { special++; last_char = 1; }
[ \t\r]+       { last_char = 1; }
%%
int main(int argc, char **argv) {
    if (argc != 2 || !(yyin = fopen(argv[1], "r"))) {
        fprintf(stderr, "Usage: %s file.txt\n", argv[0]); return 1;
    }
    yylex();
    printf("Words = %d\nSpecial characters = %d\nLines = %d\n",
           words, special, lines + (last_char ? 1 : 0));
    fclose(yyin); return 0;
}
int yywrap(void) { return 1; }
