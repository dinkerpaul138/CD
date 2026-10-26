/* Grammar: E -> T(+T)*; T -> F(*F)*; F -> id | (E) */
#include <stdio.h>
#include <ctype.h>
char s[100]; int i = 0, error = 0;
void E(void);
void F(void) {
    if (isalpha((unsigned char)s[i])) {
        while (isalnum((unsigned char)s[i])) i++;
    } else if (s[i] == '(') {
        i++; E();
        if (s[i] == ')') i++; else error = 1;
    } else error = 1;
}
void T(void) {
    F();
    while (s[i] == '*' && !error) { i++; F(); }
}
void E(void) {
    T();
    while (s[i] == '+' && !error) { i++; T(); }
}
int main(void) {
    printf("Enter expression: ");
    if (scanf("%99s", s) != 1) return 0;
    E();
    puts(!error && s[i] == '\0' ? "Accepted" : "Rejected");
    return 0;
}
