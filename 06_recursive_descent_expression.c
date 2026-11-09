#include<stdio.h>
#include<string.h>
char s[100];
int i=0;
void E();
void T();
void F();
void E()
{
    T();
    while(s[i]=='+')
    {
        i++;
        T();
    }
}
void T()
{
    F();
    while(s[i]=='*')
    {
        i++;
        F();
    }
}
void F()
{
    if(s[i]=='(')
    {
        i++;
        E();
        if(s[i]==')') i++;
        else return;
    }
    else if(s[i]=='i' && s[i+1]=='d')
        i+=2;
    else
        return;
}
int main()
{
    printf("Enter expression: ");
    scanf("%s",s);
    E();
    if(i==strlen(s))
        printf("Valid Expression");
    else
        printf("Invalid Expression");
    return 0;
}
