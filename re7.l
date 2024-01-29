%{
#include<stdio.h>
#include<math.h>
int value=0,i,j=0,flag=1;
%}
digits [0-9]
%%
{digits}{digits}{digits}{digits} { for(i=0;i<yyleng-1;i++)
		{	
			if(yytext[i]>yytext[i+1])
			{
				flag=0;
			}			
			
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
