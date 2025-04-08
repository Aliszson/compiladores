%{
#include <stdio.h>
#include <stdlib.h>
%}

 // expressao regular

IGNORAR [ \t\n] 
DIGITO [0-9]+
INT [0-9]+     
FLOAT [0-9]+\.[0-9]+
STRING \"([^\"\n]*)\"
LETRA [a-zA-Z]+
SIMBOLO [\(\)\{\}\[\]\;:,.!?_~´`'   ']
OPERADOR_MATEMATICO ([\*\*|//|[+\-*/%])
OPERADOR_LOGICO (==|!=|>=|<=|>|<|&&|\|\||!)
COMENTARIO \#.*
COMENTARIO_MULTILINHA \#\#\#[^\#]*\#\#\#
IGUALDADE [=] 
FUNCAO (escreva|leia|funcao)
CONDICIONAL if|else|switch|case|break
LOOP for|while|do
TIPO int|float|string
VARIAVEL {LETRA}({LETRA}|{DIGITO})*

%%
 // tokens
{INT} {printf("int: %s\n", yytext);}
{FLOAT} {printf("float: %s\n", yytext);}
{STRING} {printf("String: %s\n", yytext);}
{SIMBOLO} {printf("Simbolo: %s\n", yytext);}
{TIPO} {printf("Tipo: %s\n", yytext);}
{OPERADOR_MATEMATICO} {printf("Matematico: %s\n", yytext);}
{OPERADOR_LOGICO} {printf("Logico: %s\n", yytext);}
{COMENTARIO} {printf("Comentario: %s\n", yytext);}
{COMENTARIO_MULTILINHA} {printf("Comentario multilinha: %s\n", yytext);}
{IGNORAR}  { /* ignora tab e linhas */ }
{IGUALDADE} {printf("Igualdade: %s\n", yytext);}
{FUNCAO} {printf("Funcao: %s\n", yytext);}
{CONDICIONAL} {printf("Condicional: %s\n", yytext);}
{LOOP} {printf("Loop: %s\n", yytext);}
{VARIAVEL} {printf("Variavel: %s\n", yytext);}
%%

// main
int main() {
    yyin = fopen("entrada.ali", "r");
    yylex();
    fclose(yyin);
    return 0;
}
