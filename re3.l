%{
#include<stdio.h>
int flag=0,block,i=0;
%}
digits [0-9]
%%
{digits}* {block=yyleng/5;
		while(block>0)
		{
			for(i=0;i<5;i++)
			{
				if(yytext[i+5*
			}	
		}
		}
%% 
int yywrap(){}
int main() 
{ 
  yylex(); 
  if(count>=2)
  {
  	printf("success");
  }
  return 0; 
} 
