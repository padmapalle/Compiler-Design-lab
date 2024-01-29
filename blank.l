%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
char str1[200];
%}
%%
[\n] {fprintf(yyout,"%s\n",str1); str1[0]='\0';}
[ ]*|[\t] {fprintf(yyout,"%s",str1); str1[0]='\0'; fprintf(yyout,"%s"," ");}
. strcat(str1,yytext);
<<EOF>> {fprintf(yyout,"%s",str1); return 0;}
%%
int main()
{
extern FILE *yyin, *yyout;
char filename[100];
printf("Enter the name of the file to copy:\t");
scanf("%s",filename);
yyin=fopen(filename,"r");
if(yyin==NULL)
{
exit(0);
}
printf("Enter the name of the file to write:\t");
scanf("%s",filename);
yyout=fopen(filename,"w");
if(yyout==NULL)
{
exit(1);
}
yylex();
}
int yywrap()
{
}

