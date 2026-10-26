#include <stdio.h>
#include <string.h>
struct Symbol { char name[20], type[10]; } s[20];

int main(void) {
    int n = 0, ch, i;
    char name[20], type[10];
    do {
        printf("\n1.Insert 2.Search 3.Display 4.Exit\n");
        if (scanf("%d", &ch) != 1) return 0;
        if (ch == 1) {
            printf("Enter name and type: ");
            scanf("%19s %9s", name, type);
            for (i = 0; i < n && strcmp(s[i].name, name); i++);
            if (i < n) puts("Already exists");
            else if (n < 20) {
                strcpy(s[n].name, name);
                strcpy(s[n].type, type);
                n++;
            } else puts("Table full");
        } else if (ch == 2) {
            printf("Enter name: "); scanf("%19s", name);
            for (i = 0; i < n && strcmp(s[i].name, name); i++);
            if (i < n) printf("Found: %s\n", s[i].type);
            else puts("Not found");
        } else if (ch == 3) {
            puts("Name\tType");
            for (i = 0; i < n; i++)
                printf("%s\t%s\n", s[i].name, s[i].type);
        }
    } while (ch != 4);
    return 0;
}
