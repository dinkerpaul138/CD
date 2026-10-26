/* List grammar: L -> id ( , id )* */
#include <stdio.h>
#include <ctype.h>
char s[100]; int i = 0;
int item(void) {
    if (!isalpha((unsigned char)s[i])) return 0;
    while (isalnum((unsigned char)s[i])) i++;
    return 1;
}
int main(void) {
    int ok;
    printf("Enter comma-separated list: ");
    if (scanf("%99s", s) != 1) return 0;
    ok = item();
    while (ok && s[i] == ',') { i++; ok = item(); }
    puts(ok && s[i] == '\0' ? "Accepted" : "Rejected");
    return 0;
}
