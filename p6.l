%option noyywrap
%{
#include<stdio.h>
%}
%%
[0-9]* {printf("valid string is entered\n");}
[a-zA-Z]* {printf("valid string is entered\n");}
[0-9a-zA-Z]* { printf("invalid string is entered\n");}
%%
int main()
{
	yylex();
	return 0;
}
