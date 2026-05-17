%pointer
%option noyywrap

%{
#include <stdio.h>
#include "misfunciones.h"

 /* Variable global para contar los tokens reconocidos */
int contadorTokens = 0;
%}

letra           [a-zA-Z_]
digito          [0-9]
identificador   {letra}({letra}|{digito})*

%%
{identificador}    { 
                     contadorTokens++; 
                     printf("identificador: %s\n", yytext); 
                   }
%%

int main() {
    yylex(); // Llama al scanner
    
    /* TODO 3 y 4 */
    printf("Tokens totales: %d\n", contadorTokens);
    printf("El doble es: %d\n", duplicar(contadorTokens));
    
    return 0;
}

