%option noyywrap
%{
#include<stdio.h>
int count=0;
%}
%%
[a-zA-Z]* { count++;}
[ ] {}
[ \n] {printf("number of words %d",count);}
%%
int main()
{
	yylex();
	return 0;
}
