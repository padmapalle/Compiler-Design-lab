%{
char fname[20],foname[20];
%}
%%
int|float|char {fprintf(yyout,"%s Keywords",yytext);}
[a-zA-Z]* {fprintf(yyout,"%s Identifiers",yytext);}
,|; {fprintf(yyout,"%s Seperator",yytext);}
%%

int yywrap()
{
}
void main()
{
	
	printf("enter the input file name\n");
	scanf("%s",fname);
	printf("enter the output file name\n");
	scanf("%s",foname);
	yyin=fopen(fname,"r");
	yyout=fopen(foname,"w");
	yylex();
	fclose(yyin);
	fclose(yyout);
}
