%{
#include<stdio.h>
%}
digits [0-9]
%%
{digits}*222{digits}* {printf("%s string has 222",yytext);}
{digits}* {printf("%s string does not have 222",yytext);}
%% 
int yywrap(){}
int main() 
{ 
  yylex(); 

  return 0; 
} 
