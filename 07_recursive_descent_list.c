#include<stdio.h>
#include<string.h>
char s[100];
int i=0;
void S()
{
    if(s[i]=='a')
        i++;
    else
        return;
}
void L()
{
    S();
    while(s[i]==',')
    {
        i++;
        S();
    }
}
int main()
{
    printf("Enter string: ");
    scanf("%s",s);
    L();
    if(i==strlen(s))
        printf("Valid String");
    else
        printf("Invalid String");
    return 0;
}
