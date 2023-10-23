#include <stdio.h>
#include "lex.yy.c"
extern char *yytext;

int main(int argc, char **argv)
{

    argc--;
    argv++;

    FILE *errors = fopen("errors.txt", "w");
    FILE *tokens = fopen("tokens.txt", "w");
    FILE *commentlogs = fopen("commentlogs.txt", "w");
    if (argc > 0)
        yyin = fopen(argv[0], "r");
    else
        yyin = stdin;
    // yyout = fopen("tokens.txt", "w");
    int token;
    while (token = yylex())
    {
        if (token == ERROR)
        {
            fprintf(errors, "cant recognize this thing: %s\n", yytext);
        }
        if (token == COMMENT)
        {
            fprintf(commentlogs, "<comment,%s>\n", yytext);
            count++;
        }
        if (token == KEYWORD)
        {
            fprintf(tokens, "<keyword,%s>\n", yytext);
            count++;
        }
        if (token == ID)
        {
            fprintf(tokens, "<identifier,%s>\n", yytext);
            count++;
        }
        if (token == PUNCT)
        {
            fprintf(tokens, "<punctuator,%s>\n", yytext);
            count++;
        }
        if (token == CONSTANT)
        {
            if (yytext[0] == '\'')
            {
                int stringlen = strlen(yytext);
                yytext[stringlen - 1] = '\0';
                yytext++;

            }
            fprintf(tokens, "<constant,%s>\n", yytext);
            count++;
        }
        if (token == STRINGLITERAL)
        {
            int stringlen = strlen(yytext);
            yytext[stringlen - 1] = '\0';
            fprintf(tokens, "<string-literal,%s>\n", yytext + 1);
            count++;
        }
    }
    return 0;
}
