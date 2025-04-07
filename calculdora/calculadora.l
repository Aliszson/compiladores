%{
#include <stdio.h>
#include <stdlib.h>
%}

 // expressao regular


IGNORAR [\t\n] 
DIGITO [0-9]+
INT [0-9]+     
FLOAT [0-9]+\.[0-9]+  
STRING \"{CARACTERES}*\" 
LETRA [a-zA-Z]*
CARACTERES [^\t]
OPERADOR [+\-*/]
COMENTARIO \#.*
COMENTARIO_MULTILINHA \#\#\#[^\#]*\#\#\#
IGUALDADE [=] 

%%
 // tokens
{INT} {printf("Int: %s\n", yytext); }
{OPERADOR} {printf("Operador matemático: %s\n", yytext);}
{FLOAT} {printf("float: %s\n", yytext);}
{COMENTARIO} {printf("Comentario: %s\n", yytext);}
{COMENTARIO_MULTILINHA} {printf("Comentario multilinha: %s\n", yytext);}
{STRING} {printf("String: %s\n", yytext);}

{IGNORAR}  { /* ignora tab e linhas */ }
{IGUALDADE} {printf("Igualdade: %s\n", yytext);}
%%

// main
int main() {
    yyin = fopen("entrada.d", "r");
    yylex();
    fclose(yyin);
    return 0;
}
