%{
int flag=0;
%}
%%
^a|A|An|an|The|THE {flag=1;}
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
		printf("sentence starts with an article\n");
	else
		printf("sentence starts does not start with an article\n");
}
