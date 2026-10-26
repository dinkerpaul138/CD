#include <stdio.h>
int main(void) {
    /* Three-address code for: a = b + c * d */
    puts("t1 = c * d");
    puts("t2 = b + t1");
    puts("a = t2");
    return 0;
}
