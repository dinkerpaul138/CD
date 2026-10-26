
#include <stdio.h>
#include <string.h>

void add(char first[], char symbol) {
    if (strchr(first, symbol) == NULL) {
        int n = strlen(first);
        first[n] = symbol;
        first[n + 1] = '\0';
    }
}

int main() {
    char FIRST_E[10] = "";
    char FIRST_T[10] = "";
    char FIRST_F[10] = "";

    /* F -> (E) | id */
    add(FIRST_F, '(');
    add(FIRST_F, 'i');  /* i represents id */

    /* T -> T*F | F */
    for (int i = 0; FIRST_F[i] != '\0'; i++)
        add(FIRST_T, FIRST_F[i]);

    /* E -> E+T | T */
    for (int i = 0; FIRST_T[i] != '\0'; i++)
        add(FIRST_E, FIRST_T[i]);

    printf("FIRST(E) = { ");
    for (int i = 0; FIRST_E[i] != '\0'; i++)
        printf("%s", FIRST_E[i] == 'i' ? "id" : "(");
    printf(" }\n");

    printf("FIRST(T) = { ");
    for (int i = 0; FIRST_T[i] != '\0'; i++)
        printf("%s", FIRST_T[i] == 'i' ? "id" : "(");
    printf(" }\n");

    printf("FIRST(F) = { ");
    for (int i = 0; FIRST_F[i] != '\0'; i++)
        printf("%s", FIRST_F[i] == 'i' ? "id" : "(");
    printf(" }\n");

    return 0;
}
