%{
#include <stdio.h>
void showToken(char *);
void showTokenRes(char *);
%}

%option yylineno noyywrap
%option   outfile="hw1.yy.c" header-file="hw1.h"

whitespace  ([\t\r\n ])
id	    (([a-zA-Z])([0-9]|[a-zA-Z]|_)*)
num	    ([0-9]+)
str	    \"([^\r\n]|[^\n])*\"

%%
{num}     	            showToken("num");
int8		  	    showTokenRes("int8");
int16		  	    showTokenRes("int16");
int32		  	    showTokenRes("int32");
void			    showTokenRes("void");
write		  	    showTokenRes("write");
read		  	    showTokenRes("read");
while		  	    showTokenRes("while");
do		  	    showTokenRes("do");
if		  	    showTokenRes("if");
then		  	    showTokenRes("then");
else		  	    showTokenRes("else");
return		  	    showTokenRes("return");
{id}			    showToken("id");
\(|\)|\{|\}|,|:|\;	    printf("%s",yytext);
{str}			    showToken("str");
{whitespace}                printf("%s",yytext);
==|<>|<|<=|>|>=		    showToken("relop");
\+|-	   	   	    showToken("addop");
\*|\/			    showToken("mulop");
=			    showToken("assign");
&&			    showToken("and");
\|\|			    showToken("or");
!			    showToken("not");
#([^\r\n]|[^\n])*		    ;
.                           printf("‫‪\nLexical‬‬ ‫‪error:‬‬ ‫‪'%s' ‫‪in‬‬ ‫‪line‬‬ ‫‪number‬‬ ‪%d\n",yytext,yylineno); exit(1);
%%

void showToken(char *name)
{
    printf("<%s,%s>", name, yytext);
}
void showTokenRes(char *name)
{
    printf("<%s>", name);
}

