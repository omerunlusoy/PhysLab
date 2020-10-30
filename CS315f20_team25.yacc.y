%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
void yyerror(char* s);
extern int yylineno;
%}

%token INTTYPE DOUBLETYPE BOOLTYPE STRINGTYPE VARIABLE MAIN INTEGER LP RP LB RB
%token COMMENT CONST FOR IN FORDOT WHILE FUNC RETURN COMMA COLON ASSIGN NOT
%token GETINCLINATION GETALTITUDE GETTEMPERATURE GETACCELERATION GETTIMESTAMP TAKEPICTURE TURNCAMERA CONNECT DISCONNECT PRINT SCAN
%token BOOLEAN DOT MULTIPLY IF ELSE NL TAB BY FUNCTIONOUT EQUAL NOTEQUAL GREATERTHAN LESSTHAN GREATERTHANOREQUAL LESSTHANOREQUAL AND OR
%token PLUS MINUS REMAINDER DIVIDE DOUBLE STRING FUNCTION CONSTANT

%start program
%%

program: MAIN LB statements RB;

statements: statements statement | empty;

statement: statementBlockEl | ifStatement;

ifStatement: matched | unmatched;

loopStatement: forLoop | whileLoop ;

forLoop: FOR VARIABLE IN forTerm FORDOT forTerm forStepExp LB statements RB | FOR VARIABLE IN forTerm FORDOT forTerm LB statements RB;

whileLoop: WHILE logicCondition LB statements RB;

assignment: VARIABLE ASSIGN assignmentExp;

declaration: constantDec | variableDec | functionDec;

constantDec: CONST type COLON CONSTANT ASSIGN assignmentExp;

variableDec: type COLON VARIABLE 
			| type COLON VARIABLE ASSIGN assignmentExp
			| type COLON VARIABLE ASSIGN SCAN
			;

functionDec: FUNC VARIABLE parameterExp functionoutExp LB statements returnStatement RB 
			| FUNC VARIABLE parameterExp LB statements returnStatement RB
			;

functionCall: VARIABLE LP RP | VARIABLE LP callParamList RP | outStatement | inStatement | drone_method LP RP;

outStatement: PRINT printables;

printables: printables COMMA assignmentExp | assignmentExp;

inStatement: VARIABLE ASSIGN SCAN;

drone_method: droneGet | cameraStatus | takePicture | connect | disconnect;

droneGet: GETACCELERATION | GETALTITUDE | GETINCLINATION | GETTEMPERATURE | GETTIMESTAMP;

cameraStatus: TURNCAMERA;

takePicture: TAKEPICTURE;

connect: CONNECT;

disconnect: DISCONNECT;

returnStatement: RETURN assignmentExp | empty;

assignmentExp: logicCondition | STRING;

logicCondition: logicCondition logicOp not_nonLogicExp | not_nonLogicExp;

not_nonLogicExp: NOT nonLogicExp | nonLogicExp;

nonLogicExp: functionCall | BOOLEAN | arithmeticExp;

logicOp: EQUAL | NOTEQUAL | GREATERTHAN | GREATERTHANOREQUAL | LESSTHAN | LESSTHANOREQUAL | AND | OR;

arithmeticExp: arithmeticExp leastPrecMathOp multiplyDivide | multiplyDivide;

multiplyDivide: multiplyDivide mostPrecMathOp number | number;

leastPrecMathOp: PLUS | MINUS;

mostPrecMathOp: MULTIPLY | DIVIDE | REMAINDER;

matched: IF logicCondition LB statementBlocks RB ELSE LB statementBlocks RB
		| IF logicCondition LB matched RB ELSE LB statementBlocks RB 
		| IF logicCondition LB matched RB ELSE LB matched RB;
		
unmatched: IF logicCondition LB statementBlocks RB
		| IF logicCondition LB matched RB ELSE LB unmatched RB;
		
type: INTTYPE | DOUBLETYPE | STRINGTYPE | BOOLTYPE;

statementBlocks: statementBlocks statementBlockEl | empty;

statementBlockEl: COMMENT | declaration | assignment | loopStatement | functionCall;

empty: ;

number: INTEGER | DOUBLE | VARIABLE;

parameterExp: LP RP | LP functionParams RP;

functionParams: functionParams COMMA functionParam | functionParam;

functionParam: type COLON VARIABLE;

functionoutExp: FUNCTIONOUT functionParam;

forStepExp: BY INTEGER;

forTerm: VARIABLE | INTEGER | functionCall | LP arithmeticExp RP;

callParamList: callParamList COMMA funcCallParam | funcCallParam;

funcCallParam: VARIABLE | CONSTANT | INTEGER | DOUBLE | STRING | BOOLEAN;

%%
void yyerror(char *s) {
	fprintf(stdout, "line %d: %s\n", yylineno,s);
}
int main(void){
 yyparse();
if(yynerrs < 1){
		printf("Parsing: SUCCESSFUL!\n");
	}
 return 0;
}
