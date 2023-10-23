%option yylineno

%{
    #include<stdio.h>
    #include "y.tab.h"
    #include "A5_19_translator.h"
%}

string-start \"
ID [a-zA-Z_][a-zA-Z0-9_]*
WS [ \n\t]+
SEQUENCE [^"*"]|["*"][^/]
COMMENT_MAIN "/***/"
multi-line-comment [/]["*"]{SEQUENCE}*["*"][/] 
single-line-comment "//".*
COMMENT {multi-line-comment}|{single-line-comment}
DIGIT [0-9]
INTEGER_CONSTANT {DIGIT}+
escape-sequence "\\'"|"\\''"|"\\?"|"\\\\"|"\\a"|"\\b"|"\\f"|"\\n"|"\\r"|"\\t"|"\\v"
c-char {escape-sequence}|[^"'""\\"\n]
s-char {escape-sequence}|[^"\"""\\"\n]
CHAR_CONSTANT "'"{c-char}+"'"
STRINGLITERAL {string-start}{s-char}*{string-start}

%%
{COMMENT_MAIN}              
{COMMENT}                   
{WS}                        
"void"/[^a-zA-Z0-9_]+       {return VOID;}
"char"/[^a-zA-Z0-9_]+       {return CHAR;}
"int"/[^a-zA-Z0-9_]+        {return INT;} 
"if"/[^a-zA-Z0-9_]+         {return IF;} 
"else"/[^a-zA-Z0-9_]+       {return ELSE;} 
"for"/[^a-zA-Z0-9_]+        {return FOR;} 
"return"/[^a-zA-Z0-9_]+     {return RETURN;}
"->"                        {return POINTER_INDIRECTION;}
{ID}                        { 
                                // cout<<"Identifier"<<endl;
                                yylval.datatype = new data_type();
                                (yylval.datatype)[0].name = strdup(yytext);
                                // cout<<"Identifier"<<endl;
                                return IDENTIFIER;
                            }
"<="                        {return LESS_THAN_OR_EQUAL;}
">="                        {return GREATER_THAN_OR_EQUAL;}
"=="                        {return EQUAL_TO;} 
"!="                        {return NOT_EQUAL_TO;}
"||"                        {return LOGICAL_OR;}
"&&"                        {return LOGICAL_AND;}
"["                         {return OPEN_SQUARE_BRACKET;}
"]"                         {return CLOSE_SQUARE_BRACKET;}
"("                         {return OPEN_BRACKET;}
")"                         {return CLOSE_BRACKET;}
"{"                         {return OPEN_FLOWER_BRACKET;}
"}"                         {return CLOSE_FLOWER_BRACKET;}
"&"                         {return AND;}
"*"                         {return MULT;}
"+"                         {return ADD;}
"-"                         {return SUB;}
"/"                         {return DIVIDE;}
"%"                         {return REMAINDER;}
"!"                         {return NOT;}
"?"                         {return QUESTION_MARK;}
"<"                         {return LESS_THAN;}
">"                         {return GREATER_THAN;}
"="                         {return EQUAL;}
":"                         {return COLON;}
";"                         {return SEMI_COLON;}
","                         {return COMMA;}
{INTEGER_CONSTANT}          {yylval.intval = atoi(yytext);return INTEGER_CONSTANT;}
{CHAR_CONSTANT}             {yylval.charval = yytext[1];return CHAR_CONSTANT;}
{STRINGLITERAL}             {yylval.strval = strdup(yytext);return STRING_LITERAL;}
.                           {return ERROR;}

%%

int yywrap(){}

