%{
#include<stdio.h>
%}
digits [0-9]
%%
{digits}*1{digits}{digits}{digits}{digits}{digits}{digits}{digits}{digits}{digits} {printf("%s 10th symbol from right end id 1",yytext);}
{digits}* {printf("%s not 1",yytext);}
%% 
int yywrap(){}
int main() 
{ 
  yylex(); 

  return 0; 
} 
