/*lex.l file for the Project 1*/
%option main

numeric             [0-9]
alphabetic          [A-Za-z]
low_alphabetic   	  [a-z]
upp_alphabetic      [A-Z]
alphanumeric        {alphabetic}|{numeric}
TAB                 "\t"
NL                  "\n"

VARIABLE 					<low_alphabetic><alphanumeric>*
CONSTANT          <upp_alphabetic><alphanumeric>*
TYPE              "int"|"double"|"string"|"bool"

INTEGER						[+-]?{numeric}+
DOUBLE						{numeric}*"."{numeric}+
BOOLEAN						"true"|"false"|1|0
STRING						[a-zA-Z]+			

COMMENT           “%”
FORDOT            “…”
LBRACKET		      “{”
RBRACKET          “}”
LP			          “(”
RP  			        “)”
COMMA		          “,”
ASSIGN		        “<=”
COLON             “:”
FOUT              “->”

FOR               "for"
WHILE 						"while"
IF							  "if"
ELSE						  "else"
IN 							  "in"
FORDOT						"..."
BY							  "by"
CONST						  "const"
FUNC 						  "func"
RETURN						"return"
SCAN              "scan"
PRINT             "print"
GET               "get"

DRONE_GET		      “inclination” | “altitude” | “temperature” | “acceleration” | “timestamp”
TURN		          “turnCamera”	
TAKE_PICTURE      “takePicture”
CONNECT           “connectToBase”
DISCONNECT        "disconnectFromBase"

EQUAL             "=="
NOTEQUAL          "!="
LESSTHANOREQUAL   "=<"
GREATERTHANOREQUAL "=>"
LESSTHAN           "<"
GREATERTHAN        ">"
AND                "and"
OR                 "or"

PLUS                "+"
MINUS               "-"
MULTIPLY                "."
DIVIDE              "/"
MOD                 "%"

%%

{NL}					{printf("TAB");}
{TAB}         {printf("TAB");}

{VARIABLE} 					{printf("VARIABLE");}
{INTEGER}						{printf("INTEGER");}
{DOUBLE}					{printf("DOUBLE");}
{STRING}					{printf("STRING");}
{BOOLEAN}						{printf("BOOLEAN");}			

{COMMENT}				{printf("COMMENT");}

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

{COLON}						{printf("COLON");}
{COMMA}						{printf("COMMA");}
{DOT}						{printf("DOT");}
{FOUT}				{printf("FUNCTIONOUT");}
{ASSIGN}					{printf("ASSIGN_SIGN");}

{EQUAL}       {printf("EQUAL");}
{NOTEQUAL}       {printf("NOTEQUAL");}
{GREATERTHAN}       {printf("GREATERTHAN");}
{LESSTHAN}       {printf("LESSTHAN");}
{GREATERTHANOREQUAL}       {printf("GREATERTHANOREQUALOP");}
{LESSTHANOREQUAL}       {printf("LESSTHANOREQUALOP");}
{AND}       {printf("ANDOP");}
{OR}       {printf("OROP");}


{PLUS}						{printf("PLUS");}
{MINUS}						{printf("MINUS");}
{MULTIPLY}					{printf("MULTIPLY");}
{DIVIDE}					{printf("DIVIDE");}
{MOD}					{printf("REMAINDER");}

{DRONE_GET}       {printf("GETATTR");}
{TURN}            {printf("TURNCAMERA");}
{TAKEPICTURE}     {printf("TAKEPICTURE");}
{CONNECT}					{printf("CONNECT");}
{DISCONNECT}				{printf("DISCONNECT");}

%%

int yywrap() { return 1; }
