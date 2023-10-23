%{
    
    #define ERROR -1
    #define COMMENT 1
    #define KEYWORD 2
    #define ID 3
    #define PUNCT 4
    #define CONSTANT 5
    #define STRINGLITERAL 6
    int count = 0;
%}

string-start \"
any-char [^"\*/"]
ID [a-zA-Z_][a-zA-Z0-9_]*
KEYWORD char|else|if|for|int|return|void
WS [ \t\n]+
PUNCT "["|"]"|"("|")"|"{"|"}"|"->"|"&"|"*"|"+"|"-"|"/"|"%"|"!"|"?"|"<"|">"|"<="|">="|"=="|"!="|"&&"|"||"|"="|":"|";"|","
SEQUENCE [^*]|[*][^/]
multi-line-comment 	[/][*]{SEQUENCE}*[*][/]
single-line-comment "//".*
COMMENT {multi-line-comment}|{single-line-comment}
DIGIT [0-9]
NZDIGIT [1-9]
integer-constant {DIGIT}+
escape-sequence "\\'"|"\\''"|"\\?"|"\\\\"|"\\a"|"\\b"|"\\f"|"\\n"|"\\r"|"\\t"|"\\v"
c-char {escape-sequence}|[^"'""\\"\n]
s-char {escape-sequence}|[^"\"""\\"\n]
character-constant "'"{c-char}+"'"
CONSTANT {character-constant}|{integer-constant}
STRINGLITERAL {string-start}{s-char}*{string-start}
%%


{COMMENT} {return COMMENT;}
{WS}
{KEYWORD} {return KEYWORD;}
{ID} {return ID;}
{PUNCT} {return PUNCT;}
{CONSTANT} {return CONSTANT;}
{STRINGLITERAL} {return STRINGLITERAL;}
. {return ERROR;}

%%

int yywrap(){}