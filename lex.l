/*** Enclosed within "%{%}, the declaration section allows for
for the declaration of variables, regular definitions, manifest 
constants. This section will provide a copy for the lex.yy.c.
(ex: #include math.h or int count = 0***/
%{

%}

/*** Inbetween the declaration section and rules sections, is 
a definition section which is for creating names defined with patterns
so that we can avoid repetition and improve readability.***/

id      [A-Za-z][A-Za-z0-9]*

op      "+"|"-"|"*"|"="|"("|")"|"<="|"=="|"<<"

comm    "//".*

key     "int"|"main"|"for"|"while"|"cout"|"return"

ws      [ \t\n]+

string  \"[^\"]*\"

sepa    [({})]

invalidinput    [0(1-9)]*

/*** Enclosed within "%%%%", the rules section consists of patterns
or rules that describe what token is being recognised, and what to do 
with that token.***/
%%
{invalidinput}      {printf("Invalid:\t\t%s\n", yytext);}

{key}               {printf("Keyword:\t\t%s\n", yytext);}     /* keywords */

[0-9]            {printf("Integer:\t\t%s\n", yytext);}    /* integer */

[;]                 {printf("Puntuation:\t\t%s\n", yytext);}    /* punctuations */

{sepa}              {printf("Separator:\t\t%s\n", yytext);}  /* separators */

{op}                {printf("Operator:\t\t%s\n", yytext);}  /* operators */

{id}                {printf("Identifier:\t\t%s\n", yytext);}    /* identifiers */

{string}            {printf("String:\t\t%s\n", yytext);}  /* strings */

{comm}              ; /* Ignore comments */

{ws}                ;   /* Ignore white space, tab, newline */

%%

/*** The last section, User Routines Section, is for C statements and
other additional functions. The functions can be compiled seperately and 
loaded with the lexical analyzer.***/

int yywrap(){}
int main(){

printf("tokens\t\tlexemes\n");
printf("--------------------\n");
yylex();

return 0;
}
