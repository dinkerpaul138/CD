
#include <stdio.h>

int main() {
    char lhs, a, b, c, op1, op2;
    char expr[100];

    printf("Enter expression (example: a=b+c*d): ");
    scanf("%99s", expr);

    if (sscanf(expr, "%c=%c%c%c%c", &lhs, &a, &op1, &b, &op2) != 5) {
        printf("Invalid expression!\n");
        return 1;
    }

    if (op1 == '*' || op1 == '/') {
        printf("t1 = %c %c %c\n", a, op1, b);
        printf("%c = t1 %c %c\n", lhs, op2, c);
    } else if (op2 == '*' || op2 == '/') {
        printf("t1 = %c %c %c\n", b, op2, c);
        printf("t2 = %c %c t1\n", a, op1);
        printf("%c = t2\n", lhs);
    } else {
        printf("t1 = %c %c %c\n", a, op1, b);
        printf("%c = t1 %c %c\n", lhs, op2, c);
    }

    return 0;
}
