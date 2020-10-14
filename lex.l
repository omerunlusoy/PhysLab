alphabetic                  [A-Za-z]
digit                       [0-9]
INTEGER                     [+-]?{digit}+
STRING                      \".*\" 
space                       [ \t]+
alphanumeric                ({alphabetic}|{digit})
FLOAT 						{digit}*(\.){digit}+
LOGIC 					    (true|false)
TYPE                        (int|float|string|boolean|connection)
VARIABLE                    {alphabetic}{alphanumeric}*
DOT                         \.
LP                          \(
RP                          \)
SMALLERTHAN                 \<
GREATERTHAN                 \>
GREATEREQUAL                \>\=
SMALLEREQUAL                \<\=
EQUAL                       \=\=
ASSIGN                      <=
NOTEQUAL                    \!\=
WHILE                       while
FOR                         for
IF                          if
ELSE                        else 
THEN                        then 
END                         end 
START                       start
NOT                         not
RETURN                      return
CONST                       const
AND                         \&\&
OR                          \|\|                    
COMMA                       ,
COMMENT                     ##.*
TIMESTAMP                   timestamp
CONNECT                     connect
DISCONNECT                  disconnect
SWITCHES                    switches
SENDDATATOSENSOR            sendDataToSensor
READDATAFROMSENSOR          readDataFromSensor
GETURL                      getURL
SENDURL                     sendURL
FUNC                        func
EOL                         ;
GETTEMPERATURE              getTemperature
GETHUMIDITY                 getHumidity
GETAIRPRESSURE              getAirPressure
GETLIGHT                    getLight
GETSOUNDLEVEL               getSoundLevel
GETAIRQUALITY               getAirQuality
OPEN                        open
CLOSE                       close
CHOSENSWITCH                SW[0-9]+
FROM                        from
TO                          to
BY                          by
PLUS                        \+
MINUS                       \-
DIVIDE                      \/
MULT                        \*
REMAINDER                   \%  
COLON			    \:
%%
"\n"  {
			 extern int lineno;
			 lineno++;
}
{START} 		{return(START);}
{REMAINDER}         	{ return(REMAINDER ); }
{PLUS}         		{ return(PLUS ); }
{MINUS}         	{ return(MINUS ); }
{DIVIDE}         	{ return(DIVIDE ); }
{MULT}        		{ return(MULT ); }
{BY}         		{ return(BY ); }
{TO}         		{ return(TO ); }
{FROM}       		{ return(FROM ); }
{STRING}     		{ return(STRING ); }
{INTEGER}    		{ return(INTEGER ); }
{CHOSENSWITCH}       	{ return(CHOSENSWITCH ); }
{OPEN}      		{ return(OPEN ); }
{CLOSE}     		{ return(CLOSE ); }
{GETAIRQUALITY}    	{ return(GETAIRQUALITY ); }
{GETSOUNDLEVEL}         { return(GETSOUNDLEVEL ); }
{GETLIGHT}       	{ return(GETLIGHT ); }
{GETAIRPRESSURE}        { return(GETAIRPRESSURE ); }
{GETHUMIDITY}       	{ return(GETHUMIDITY ); }
{GETTEMPERATURE}        { return(GETTEMPERATURE ); }
{RETURN}                { return(RETURN ); }
{CONST}                 { return(CONST ); }
{EOL}               	{ return(EOL ); }
{EQUAL}                 { return(EQUAL ); }
{FUNC}                  { return(FUNC ); }
{READDATAFROMSENSOR}    { return(READDATAFROMSENSOR ); }
{SENDDATATOSENSOR}  	{ return(SENDDATATOSENSOR ); }
{SENDURL}               { return(SENDURL ); }
{GETURL}                { return(GETURL ); }
{TIMESTAMP}             { return(TIMESTAMP ); }
{CONNECT}               { return(CONNECT ); }
{DISCONNECT}            { return(DISCONNECT ); }
{SWITCHES}              { return(SWITCHES ); }
{WHILE}                 { return(WHILE ); }
{FOR}                   { return(FOR ); }
{IF}                    { return(IF ); }
{ELSE}                  { return(ELSE ); }
{THEN}                  { return(THEN ); }
{END}                   { return(END ); }
{NOT}                   { return(NOT ); }
{NOTEQUAL}              { return(NOTEQUAL ); }
{AND}                   { return(AND ); }
{OR}                    { return(OR ); }
{FLOAT}                 { return(FLOAT ); }
{LOGIC}                 { return(LOGIC ); }
{SMALLEREQUAL}     	{ return(SMALLEREQUAL ); }
{BIGGEREQUAL}           { return(BIGGEREQUAL ); }
{SMALLERTHAN}           { return(SMALLERTHAN ); }
{BIGGERTHAN}            { return(BIGGERTHAN ); }
{LP}                  	{ return(LP ); }
{RP}                  	{ return(RP ); }
{ASSIGN}              	{ return(ASSIGN); }
{COMMA}               	{ return(COMMA); }
{TYPE}                	{ return(TYPE ); }
{VARIABLE}            	{ return(VARIABLE); }
{COMMENT}             	{ return(COMMENT ); }
%%
int yywrap() { return 1; }
