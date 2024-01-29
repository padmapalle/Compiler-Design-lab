%option noyywrap
%{
#include<stdio.h>
int v=0;
int c=0;
%}
%%
[aeiouAEIOU] { v++; printf("vowel:%s\n",yytext);}
[a-zA-Z] {c++; printf("consonant:%s\n",yytext);}
[  \n] { printf("number of vowels %d\nnumber of consonants %d",v,c);}
%%
int main()
{
	yylex();
	//printf("number of vowels %d\n",v);
	//printf("number of consonants%d\n",c);
	return 0;
}
