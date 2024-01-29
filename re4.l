%{
#include<stdio.h>
#include<math.h>
int value=0,i,j=0,flag=0;
%}
%%
1[01]* { for(i=yyleng-1;i>=0;i--)
		{	
			value=value+(yytext[i]-48)*pow(2,j);	
			//printf("%d\t",yytext[i]);
			j++;
		}
		//printf("\n%d",value);
		//printf("\n%d",yyleng);
		if(value%5==0)
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
