%{
%}
%%
[+-]?[0-9]*[.][0-9]+ {printf("floating point numbers\n");}
[+-]?[0-9]+ {printf("not a floating point number\n");}
%%

int yywrap()
{
}
void main()
{
	printf("enter any number ");
	yylex();
}
