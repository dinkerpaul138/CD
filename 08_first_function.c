#include<stdio.h>
#include<string.h>
#include<ctype.h>
char p[20][50];
int n;
char result[50];
int count=0;
void add(char c)
{
    int i;
    for(i=0;i<count;i++)
        if(result[i]==c) return;
    result[count++]=c;
}
void FIRST(char c, int visited[])
{
    int i,j,k;
    char *rhs;
    if(!isupper(c))
    {
        add(c);
        return;
    }
    if(visited[c-'A']) return;
    visited[c-'A']=1;
    for(i=0;i<n;i++)
    {
        if(p[i][0]==c)
        {
            rhs=p[i]+2;
            for(j=0;rhs[j]!='\0';)
            {
                if(rhs[j]=='|')
                {
                    j++;
                    continue;
                }
                if(isupper(rhs[j]))
                    FIRST(rhs[j],visited);
                else
                    add(rhs[j]);
                while(rhs[j]!='|' && rhs[j]!='\0')
                    j++;
            }
        }
    }

    visited[c-'A']=0;
}

int main()
{
    char c;
    int visited[26]={0},i;
    printf("Enter number of productions: ");
    scanf("%d",&n);
    printf("Enter productions (Example E=E+T|T):\n");
    for(i=0;i<n;i++)
        scanf("%s",p[i]);
    printf("Enter non-terminal: ");
    scanf(" %c",&c);
    FIRST(c,visited);
    printf("FIRST(%c) = { ",c);
    for(i=0;i<count;i++)
        printf("%c ",result[i]);
    printf("}");
    return 0;
}
