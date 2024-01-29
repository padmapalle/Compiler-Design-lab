%option noyywrap
%{
#include<stdio.h>
%}
%%
[0-9]+ {printf("Number:%s\n",yytext);}
[+-] {printf("Operator:%s\n",yytext);}
[ \t\n] {/*ignore whitespace and newline*/}
[a-zA-Z]* {printf("Invalid character:%s\n",yytext);}
%%
int main()
{
	printf("enter");
	yylex();
	return 0;
}
