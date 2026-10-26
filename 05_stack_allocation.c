#include <stdio.h>
#define MAX 5
int s[MAX], top = -1;
void push(int x) {
    if (top == MAX - 1) puts("Stack overflow");
    else s[++top] = x;
}
void pop(void) {
    if (top == -1) puts("Stack underflow");
    else printf("Popped: %d\n", s[top--]);
}
int main(void) {
    int ch, x, i;
    do {
        printf("\n1.Push 2.Pop 3.Display 4.Exit\n");
        scanf("%d", &ch);
        if (ch == 1) { printf("Value: "); scanf("%d", &x); push(x); }
        else if (ch == 2) pop();
        else if (ch == 3) {
            for (i = top; i >= 0; i--) printf("%d ", s[i]);
            putchar('\n');
        }
    } while (ch != 4);
    return 0;
}
