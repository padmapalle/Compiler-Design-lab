%{
#include<stdio.h>
%}
digits [0-9]
%%
{digits}*00 {printf("%s string ends with 00",yytext);}
{digits}* {printf("%s string does not end with 00",yytext);}
%% 
int yywrap(){}
int main() 
{ 
  yylex(); 

  return 0; 
} 
