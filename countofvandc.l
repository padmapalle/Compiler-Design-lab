%{
#include <stdio.h> 
int vow_count = 0; 
int const_count = 0;
%}

%%
[aeiouAEIOU]    { vow_count++; }
[a-zA-Z]        { const_count++; }
\n              { printf("Vowels count is=%d, Consonants count is=%d\n", vow_count, const_count); }
.               /* Ignore any other characters */
%%

int main() {
    printf("Enter the string of vowels and consonants: "); 
    yylex();
    return 0;
} 

int yywrap() {
    return 1;  /* Indicate that we've reached the end of input */
}
