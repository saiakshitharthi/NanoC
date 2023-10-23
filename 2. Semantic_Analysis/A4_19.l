%{
    #include<stdio.h>
    #include "y.tab.h"
    int number_of_lines = 1;
%}

string-start \"
TEMP1 [a-zA-Z0-9_]+
TEMP2 [a-zA-Z0-9_]*
KEYWORD char|else|if|for|int|return|void
ID char{TEMP1}|cha|cha([a-zA-Z0-9_]{-}[r])+{TEMP2}|ch|ch([a-zA-Z0-9_]{-}[a])+{TEMP2}|c|c([a-zA-Z0-9_]{-}[h])+{TEMP2}|else{TEMP1}|els|els([a-zA-Z0-9_]{-}[e])+{TEMP2}|el|el([a-zA-Z0-9_]{-}[s])+{TEMP2}|e|e([a-zA-Z0-9_]{-}[l])+{TEMP2}|for{TEMP1}|fo|fo([a-zA-Z0-9_]{-}[r])+{TEMP2}|f|f([a-zA-Z0-9_]{-}[o])+{TEMP2}|if{TEMP1}|i|i([a-zA-Z0-9_]{-}[fn])+{TEMP2}|int{TEMP1}|in|in([a-zA-Z0-9_]{-}[t])+{TEMP2}|return{TEMP1}|retur|retur([a-zA-Z0-9_]{-}[n])+{TEMP2}|retu|retu([a-zA-Z0-9_]{-}[r])+{TEMP2}|ret|ret([a-zA-Z0-9_]{-}[u])+{TEMP2}|re|re([a-zA-Z0-9_]{-}[t])+{TEMP2}|r|r([a-zA-Z0-9_]{-}[e])+{TEMP2}|void{TEMP1}|voi|voi([a-zA-Z0-9_]{-}[d])+{TEMP2}|vo|vo([a-zA-Z0-9_]{-}[i])+{TEMP2}|v|v([a-zA-Z0-9_]{-}[o])+{TEMP2}|([a-zA-Z_]{-}[ceifrv])+{TEMP2}
WS [ \t]+
LINE [\n]
SEQUENCE [^*]|[*][^/]|[*]
multi-line-comment 	[/][*]{SEQUENCE}*[*][/]
single-line-comment "//".*
COMMENT {multi-line-comment}|{single-line-comment}
DIGIT [0-9]
NZDIGIT [1-9]
INTEGER_CONSTANT {DIGIT}+
escape-sequence "\\'"|"\\''"|"\\?"|"\\\\"|"\\a"|"\\b"|"\\f"|"\\n"|"\\r"|"\\t"|"\\v"
c-char {escape-sequence}|[^"'""\\"\n]
s-char {escape-sequence}|[^"\"""\\"\n]
CHAR_CONSTANT "'"{c-char}+"'"
STRINGLITERAL {string-start}{s-char}*{string-start}

%%
\n                  number_of_lines++;
{COMMENT}  
{WS}                
{ID}                {return IDENTIFIER;}
"void"              {return VOID;}
"char"              {return CHAR;}
"int"               {return INT;} 
"if"                {return IF;} 
"else"              {return ELSE;} 
"for"               {return FOR;} 
"return"            {return RETURN;}
"->"                {return POINTER_INDIRECTION;}
"<="                {return LESS_THAN_OR_EQUAL;}
">="                {return GREATER_THAN_OR_EQUAL;}
"=="                {return EQUAL_TO;} 
"!="                {return NOT_EQUAL_TO;}
"||"                {return LOGICAL_OR;}
"&&"                {return LOGICAL_AND;}
"["                 {return OPEN_SQUARE_BRACKET;}
"]"                 {return CLOSE_SQUARE_BRACKET;}
"("                 {return OPEN_BRACKET;}
")"                 {return CLOSE_BRACKET;}
"{"                 {return OPEN_FLOWER_BRACKET;}
"}"                 {return CLOSE_FLOWER_BRACKET;}
"&"                 {return AND;}
"*"                 {return MULT;}
"+"                 {return ADD;}
"-"                 {return SUB;}
"/"                 {return DIV;}
"%"                 {return REMAINDER;}
"!"                 {return NOT;}
"?"                 {return QUESTION_MARK;}
"<"                 {return LESS_THAN;}
">"                 {return GREATER_THAN;}
"="                 {return EQUAL;}
":"                 {return COLON;}
";"                 {return SEMI_COLON;}
","                 {return COMMA;}
{INTEGER_CONSTANT}  {return INTEGER_CONSTANT;}
{CHAR_CONSTANT}     {return CHAR_CONSTANT;}
{STRINGLITERAL}     {return STRING_LITERAL;}
.                   {return ERROR;}

%%

int yywrap(){}