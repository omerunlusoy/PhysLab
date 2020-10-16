/*lex.l file for the Project 1*/
%option main

digit                       [0-9]
alphabetic                  [A-Za-z]
alphanumeric                ({alphabetic}|{digit})
space                       [ \t]+
newline						\\n

VARIABLE 					{alphabetic}{alphanumeric}*

INTEGER						[+-]?{digit}+
DOUBLE						{digit}*(\.){digit}+
BOOLEAN						(true|false)
STRING						\".*\" 
CHARACTER					[A-Za-z]			

COMMENTLINE					//.*

FOR                     	for
WHILE 						while
IF							if
ELSE						else
IN 							in
FORDOT						\.\.\.
BY							by
CONST						const
FUNC 						func
RETURN						return

LBRACKET 					\{
RBRACKET					\}
LP							\(
RP							\)

TRUE 						true
FALSE 						false

COLON						\:
COMMA						\,
DOT							\.
FUNCTIONOUT					\-\>
ASSIGN						\<\=

EQUALITY					\=\=
UNEQUALTY					\!\=
GREATERTHAN					\>
GREATEREQUAL				\>\=
SMALLERTHAN					\<
SMALLEREQUAL				\<\=
AND							\&\&
OR							\|\|
PLUS						\+
MINUS						\-
MULTIPLY					\*
DIVIDE						\/
REMAINDER					\%

GETINCLINATION				getInclination
GETALTITUDE					getAltitude
GETTEMPERATURE				getTemperature
GETACCELERATION				getAcceleration
STREAMON					streamOn
STREAMOFF					streamOff
TAKEPIC						takePic
GETTIMESTAMP				getTimestamp
CONNECT						connect
DISCONNECT					disconnect

%%

{newline}					{printf("\n");}

{VARIABLE} 					{printf("VARIABLE");}

{INTEGER}					{printf("INTEGER");}
{DOUBLE}					{printf("DOUBLE");}
{BOOLEAN}					{printf("BOOLEAN");}
{STRING}					{printf("STRING");}
{CHARACTER}					{printf("CHARACTER");}			

{COMMENTLINE}				{printf("COMMENTLINE");}

{FOR}                     	{printf("FOR");}
{WHILE} 					{printf("WHILE");}
{IF}						{printf("IF");}
{ELSE}						{printf("ELSE");}
{IN} 						{printf("IN");}
{FORDOT}					{printf("FORDOT");}
{BY}						{printf("BY");}
{CONST}						{printf("CONST");}
{FUNC} 						{printf("FUNC");}
{RETURN}					{printf("RETURN");}

{LBRACKET}					{printf("LBRACKET");}
{RBRACKET}					{printf("RBRACKET");}
{LP}						{printf("LP");}
{RP}						{printf("RP");}

{TRUE} 						{printf("TRUE");}
{FALSE} 					{printf("FALSE");}

{COLON}						{printf("COLON");}
{COMMA}						{printf("COMMA");}
{DOT}						{printf("DOT");}
{FUNCTIONOUT}				{printf("FUNCTIONOUT");}
{ASSIGN}					{printf("ASSIGN");}

{EQUALITY}					{printf("EQUALITY");}
{UNEQUALTY}					{printf("UNEQUALTY");}
{GREATERTHAN}				{printf("GREATERTHAN");}
{GREATEREQUAL}				{printf("GREATEREQUAL");}
{SMALLERTHAN}				{printf("SMALLERTHAN");}
{SMALLEREQUAL}				{printf("SMALLEREQUAL");}
{AND}						{printf("AND");}
{OR}						{printf("OR");}
{PLUS}						{printf("PLUS");}
{MINUS}						{printf("MINUS");}
{MULTIPLY}					{printf("MULTIPLY");}
{DIVIDE}					{printf("DIVIDE");}
{REMAINDER}					{printf("REMAINDER");}

{GETINCLINATION}			{printf("GETINCLINATION");}
{GETALTITUDE}				{printf("GETALTITUDE");}
{GETTEMPERATURE}			{printf("GETTEMPERATURE");}
{GETACCELERATION}			{printf("GETACCELERATION");}
{STREAMON}					{printf("STREAMON");}
{STREAMOFF}					{printf("STREAMOFF");}
{TAKEPIC}					{printf("TAKEPIC");}
{GETTIMESTAMP}				{printf("GETTIMESTAMP");}
{CONNECT}					{printf("CONNECT");}
{DISCONNECT}				{printf("DISCONNECT");}

%%

int yywrap() { return 1; }
