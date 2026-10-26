%{
#include <stdio.h>
int vowels = 0, consonants = 0;
%}
%%
[aeiouAEIOU] { vowels++; }
[a-zA-Z]     { consonants++; }
.|\n         ;
%%
int main(int argc, char **argv) {
    if (argc != 2 || !(yyin = fopen(argv[1], "r"))) {
        fprintf(stderr, "Usage: %s file.txt\n", argv[0]); return 1;
    }
    yylex();
    printf("Vowels = %d\nConsonants = %d\n", vowels, consonants);
    fclose(yyin); return 0;
}
int yywrap(void) { return 1; }
