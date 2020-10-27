%%

%%
#include "lex.yy.c"
yyerror(char* s){printf("Error\n");}
main(){return yyparse();}
