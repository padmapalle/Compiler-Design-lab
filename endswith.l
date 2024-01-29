%{
int flag=0;
%}
%% 
[a-zA-Z]*[?.!]$ {flag=1;}
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
		printf("ends with punctuation\n");
	else
		printf("does not end with punctuation\n");
}
