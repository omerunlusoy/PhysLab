/*lex.l file for the Project 1*/
%{
#include <stdio.h>
#include "y.tab.h"
void yyerror(char *);
%}

COMMENT   			\/\/.*
MAIN				main\(\)
DOT 				\.
TAB                 \\t
NL                  \\n
LB				    \{
RB		          	\}
LP			        \(
RP  			    \)
COMMA		        \,
ASSIGN		        \<\=
COLON             	\:
FUNCTIONOUT        	\-\>
FORDOT				\.\.\.
EQUAL             	\=\=
NOTEQUAL          	\!\=
LESSTHANOREQUAL   	\=\<
GREATERTHANOREQUAL 	\=\>
LESSTHAN           	\<
GREATERTHAN        	\>
AND                	\&
OR                 	\|
NOT					\!
PLUS                \+
MINUS               \-
MULTIPLY            \*
DIVIDE              \/
REMAINDER           \%
INTTYPE 			int
DOUBLETYPE 			double
STRINGTYPE 			string
BOOLTYPE 			bool	
BOOLEAN				(true|false)
FOR               	for
WHILE 				while
IF					if
ELSE				else
IN 					in
BY					by
CONST				const
FUNC 				func
RETURN				return
SCAN              	scan
PRINT             	print
CONNECT           	connect
DISCONNECT        	disconnect
GETINCLINATION 		getInclination
GETALTITUDE			getAltitude
GETTEMPERATURE		getTemperature
GETACCELERATION		getAcceleration
GETTIMESTAMP		getTimestamp
TURN		        turnCamera
TAKEPICTURE      	takePicture
numeric             [0-9]
alphabetic          [A-Za-z]
low_alphabetic   	[a-z]
upp_alphabetic      [A-Z]
ALPHANUMERIC        {alphabetic}|{numeric}
INTEGER				[+-]?{numeric}+
DOUBLE				{numeric}*"."{numeric}+
STRING				\"(\\.|[^"\\])*\"
VARIABLE 		 	{low_alphabetic}{ALPHANUMERIC}*
CONSTANT          	{upp_alphabetic}{ALPHANUMERIC}*

%option yylineno
%%
{MAIN} 				{return MAIN;}
{INTTYPE} 			{return INTTYPE;}
{DOUBLETYPE} 		{return DOUBLETYPE;}
{BOOLTYPE} 			{return BOOLTYPE;}
{STRINGTYPE} 		{return STRINGTYPE;}
{GETINCLINATION} 	{return GETINCLINATION;}
{GETALTITUDE}		{return GETALTITUDE;}
{GETTEMPERATURE}	{return GETTEMPERATURE;}
{GETACCELERATION}	{return GETACCELERATION;}
{GETTIMESTAMP}		{return GETTIMESTAMP;}
{TAKEPICTURE}     	{return TAKEPICTURE;}
{TURN}           	{return TURNCAMERA;}
{CONNECT}			{return CONNECT;}
{DISCONNECT}		{return DISCONNECT;}
{PRINT}				{return PRINT;}
{SCAN}				{return SCAN;}
{BOOLEAN}			{return BOOLEAN;}
{DOT}				{return DOT;}
{MULTIPLY}			{return MULTIPLY;}
{IF}				{return IF;}
{ELSE}				{return ELSE;}
{NL}				{return NL;}
{TAB}         		{return TAB;}
{FOR}               {return FOR;}
{FORDOT}			{return FORDOT;}		
{WHILE} 			{return WHILE;}
{IN} 				{return IN;}
{BY}				{return BY;}
{CONST}				{return CONST;}
{FUNC} 				{return FUNC;}
{RETURN}			{return RETURN;}
{LB}				{return LB;}
{RB}				{return RB;}
{LP}				{return LP;}
{RP}				{return RP;}
{COLON}				{return COLON;}
{COMMA}				{return COMMA;}
{FUNCTIONOUT}		{return FUNCTIONOUT;}
{ASSIGN}			{return ASSIGN;}
{EQUAL}       		{return EQUAL;}
{NOTEQUAL}       	{return NOTEQUAL;}
{GREATERTHAN}       {return	GREATERTHAN;}
{LESSTHAN}       	{return LESSTHAN;}
{GREATERTHANOREQUAL} {return GREATERTHANOREQUAL;}
{LESSTHANOREQUAL}   {return LESSTHANOREQUAL;}
{AND}       		{return AND;}
{OR}       			{return OR;}
{PLUS}				{return PLUS;}
{MINUS}				{return MINUS;}
{DIVIDE}			{return DIVIDE;}
{REMAINDER}			{return REMAINDER;}
{COMMENT}			{return COMMENT;}
{INTEGER}			{return INTEGER;}
{DOUBLE}			{return DOUBLE;}
{STRING}			{return STRING;}		
{VARIABLE} 			{return VARIABLE;}
{CONSTANT}			{return CONSTANT;}
{NOT}				{return NOT;}
%%

int yywrap(void){
	return 1;
}