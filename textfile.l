%{
#include <stdio.h>
#include <stdlib.h>
char fname[25];
FILE *yyin;
%}

alpha [a-zA-Z]
digit [0-9]

%%

(float|int)   { printf("\nkeyword"); }
{alpha}({digit}|{alpha})*   { printf("\nidentifier"); }
{digit}({digit}|{alpha})*   { printf("\ninvalid token"); }

%%

int main() {
    printf("Enter filename: ");
    scanf("%s", fname);
    yyin = fopen(fname, "r");
    if (yyin == NULL) {
        perror("Error opening file");
        return 1;
    }
    yylex();
    fclose(yyin);
    return 0;
}
