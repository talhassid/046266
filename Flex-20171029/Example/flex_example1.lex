%{
#include <stdio.h>
void showToken(char *);
%}

%option yylineno noyywrap
%option   outfile="flex_example1.c" header-file="flex_example1.h"

digit       ([0-9])
letter      ([a-zA-Z])
whitespace  ([\t\n ])


%%
{digit}                     showToken("single-digit");
{digit}+                    showToken("number");
{letter}+                   showToken("word");
{letter}+@{letter}+\.com    showToken("email-address");
{whitespace}                ;
.                           printf("lex fails to recognize this (%s)!\n", yytext);
%%

void showToken(char *name)
{
    printf("name=%s lexeme=%s len(lexeme)=%zd\n", name, yytext, yyleng);
}

