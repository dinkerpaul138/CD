#include <stdio.h>
int main(void) {
    /* For E -> E+T | T, T -> T*F | F, F -> (E) | id */
    puts("FIRST(E) = { (, id }");
    puts("FIRST(T) = { (, id }");
    puts("FIRST(F) = { (, id }");
    return 0;
}
