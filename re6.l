%{
#include<stdio.h>
#include<math.h>
int value=0,i,j=0,flag=0;
%}
digits [0-9]
%%
{digits}{digits}{digits}{digits} { for(i=yyleng-1;i>=0;i--)
		{	
			value+=(yytext[i]-48);
		}
		//printf("\n%d",value);
		//printf("\n%d",yyleng);
		if(value==9)
		{
			flag=1;
		}
	    }
[\n] return 0;
%% 
int yywrap(){}
int main() 
{ 
  yylex(); 
  if(flag==1)
  {
  	printf("success\n");
  }
  else
  {
  	printf("fail\n");
  }
  
  return 0; 
} 
