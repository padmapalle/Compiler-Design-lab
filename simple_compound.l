%{
int flag=0;
%}
%%
and|or|but|because|if|nevertheless {flag=1;}
[a-zA-Z]* {}
\n return 0;
%%

int yywrap()
{
}
void main()
{
	printf("enter a sentence ");
	yylex();
	if(flag==1)
		printf("it is a compound sentence\n");
	else
		printf("it is a simple sentence\n");
}
