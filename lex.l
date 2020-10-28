/*lex.l file for the Project 1*/
%option main
COMMENT   			\/\/.*
DOT 				\.
TAB                 \\t
NL                  \\n
LBRACKET		    \{
RBRACKET          	\}
LP			        \(
RP  			    \)
COMMA		        \,
ASSIGN		        \<\=
COLON             	\:
FOUT              	\-\>
FORDOT				\.\.\.
EQUAL             	\=\=
NOTEQUAL          	\!\=
LESSTHANOREQUAL   	\=\<
GREATERTHANOREQUAL 	\=\>
LESSTHAN           	\<
GREATERTHAN        	\>
AND                	&
OR                 	|
NOT					!
PLUS                \+
MINUS               \-
MULTIPLY            \*
DIVIDE              \/
MOD                 \%
int 				int
double 				double
string 				string
bool 				bool	
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
GETTEMPRATURE		getTemperature
GETACCELERATION		getAcceleration
GETTIMESTAMP		getTimestamp
TURN		        turnCamera
TAKEPICTURE      	takePicture
numeric             [0-9]
alphabetic          [A-Za-z]
low_alphabetic   	[a-z]
upp_alphabetic      [A-Z]
alphanumeric        {alphabetic}|{numeric}
INTEGER				[+-]?{numeric}+
DOUBLE				{numeric}*"."{numeric}+
FUNCTION 			{low_alphabetic}{alphanumeric}*\(\)
STRING				\"(\\.|[^"\\])*\"
VARIABLE 		 	{low_alphabetic}{alphanumeric}*
CONSTANT          	{upp_alphabetic}{alphanumeric}*
%%
{int} 				{printf("INT_TYPE ");}
{double} 			{printf("DOUBLE_TYPE ");}
{bool} 				{printf("BOOL_TYPE ");}
{string} 			{printf("STRING_TYPE ");}
{GETINCLINATION} 	{printf("GETINCLINATION ");}
{GETALTITUDE}		{printf("GETALTITUDE ");}
{GETTEMPRATURE}		{printf("GETTEMPRATURE ");}
{GETACCELERATION}	{printf("GETACCELERATION ");}
{GETTIMESTAMP}		{printf("GETTIMESTAMP ");}
{TAKEPICTURE}     	{printf("TAKEPICTURE ");}
{TURN}           	{printf("TURNCAMERA ");}
{CONNECT}			{printf("CONNECT ");}
{DISCONNECT}		{printf("DISCONNECT ");}
{FUNCTION}			{printf("FUNCTION ");}
{PRINT}				{printf("PRINT ");}
{SCAN}				{printf("SCAN ");}
{BOOLEAN}			{printf("BOOLEAN ");}
{DOT}				{printf("DOT ");}
{MULTIPLY}			{printf("MULTIPLY ");}
{IF}				{printf("IF ");}
{ELSE}				{printf("ELSE ");}
{NL}				{printf("NL ");}
{TAB}         		{printf("TAB ");}
{FOR}               {printf("FOR ");}
{FORDOT}			{printf("FORDOT ");}		
{WHILE} 			{printf("WHILE ");}
{IN} 				{printf("IN ");}
{BY}				{printf("BY ");}
{CONST}				{printf("CONST ");}
{FUNC} 				{printf("FUNC ");}
{RETURN}			{printf("RETURN ");}
{LBRACKET}			{printf("LBRACKET ");}
{RBRACKET}			{printf("RBRACKET ");}
{LP}				{printf("LP ");}
{RP}				{printf("RP ");}
{COLON}				{printf("COLON ");}
{COMMA}				{printf("COMMA ");}
{FOUT}				{printf("FUNCTIONOUT ");}
{ASSIGN}			{printf("ASSIGN ");}
{EQUAL}       		{printf("EQUAL ");}
{NOTEQUAL}       	{printf("NOTEQUAL ");}
{GREATERTHAN}       {printf("GREATERTHAN ");}
{LESSTHAN}       	{printf("LESSTHAN ");}
{GREATERTHANOREQUAL} {printf("GREATERTHANOREQUAL ");}
{LESSTHANOREQUAL}   {printf("LESSTHANOREQUALOP ");}
{AND}       		{printf("AND ");}
{OR}       			{printf("OR ");}
{PLUS}				{printf("PLUS ");}
{MINUS}				{printf("MINUS ");}
{DIVIDE}			{printf("DIVIDE ");}
{MOD}				{printf("REMAINDER ");}
{COMMENT}			{printf("COMMENT ");}
{INTEGER}			{printf("INTEGER ");}
{DOUBLE}			{printf("DOUBLE ");}
{STRING}			{printf("STRING ");}		
{VARIABLE} 			{printf("VARIABLE ");}
