%{
%}
%%
^[+-]+[0-9]* {printf("signed number");}
[0-9]* {printf("unsigned number");}
\n return 0;
%%

int yywrap()
{
}
void main()
{
	printf("enter a number ");
	yylex();
}
