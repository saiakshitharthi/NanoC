/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif
/* "%code requires" blocks.  */
#line 11 "A5_19.y"

    #include "A5_19_translator.h"

#line 53 "y.tab.h"

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    COMMENT = 258,                 /* COMMENT  */
    ERROR = 259,                   /* ERROR  */
    VOID = 260,                    /* VOID  */
    IF = 261,                      /* IF  */
    ELSE = 262,                    /* ELSE  */
    FOR = 263,                     /* FOR  */
    RETURN = 264,                  /* RETURN  */
    POINTER_INDIRECTION = 265,     /* POINTER_INDIRECTION  */
    LESS_THAN_OR_EQUAL = 266,      /* LESS_THAN_OR_EQUAL  */
    GREATER_THAN_OR_EQUAL = 267,   /* GREATER_THAN_OR_EQUAL  */
    EQUAL_TO = 268,                /* EQUAL_TO  */
    NOT_EQUAL_TO = 269,            /* NOT_EQUAL_TO  */
    LOGICAL_OR = 270,              /* LOGICAL_OR  */
    LOGICAL_AND = 271,             /* LOGICAL_AND  */
    OPEN_SQUARE_BRACKET = 272,     /* OPEN_SQUARE_BRACKET  */
    CLOSE_SQUARE_BRACKET = 273,    /* CLOSE_SQUARE_BRACKET  */
    OPEN_BRACKET = 274,            /* OPEN_BRACKET  */
    CLOSE_BRACKET = 275,           /* CLOSE_BRACKET  */
    OPEN_FLOWER_BRACKET = 276,     /* OPEN_FLOWER_BRACKET  */
    CLOSE_FLOWER_BRACKET = 277,    /* CLOSE_FLOWER_BRACKET  */
    AND = 278,                     /* AND  */
    MULT = 279,                    /* MULT  */
    ADD = 280,                     /* ADD  */
    SUB = 281,                     /* SUB  */
    DIVIDE = 282,                  /* DIVIDE  */
    REMAINDER = 283,               /* REMAINDER  */
    NOT = 284,                     /* NOT  */
    QUESTION_MARK = 285,           /* QUESTION_MARK  */
    LESS_THAN = 286,               /* LESS_THAN  */
    GREATER_THAN = 287,            /* GREATER_THAN  */
    EQUAL = 288,                   /* EQUAL  */
    COLON = 289,                   /* COLON  */
    SEMI_COLON = 290,              /* SEMI_COLON  */
    COMMA = 291,                   /* COMMA  */
    CHAR = 292,                    /* CHAR  */
    INT = 293,                     /* INT  */
    IDENTIFIER = 294,              /* IDENTIFIER  */
    INTEGER_CONSTANT = 295,        /* INTEGER_CONSTANT  */
    CHAR_CONSTANT = 296,           /* CHAR_CONSTANT  */
    STRING_LITERAL = 297           /* STRING_LITERAL  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define COMMENT 258
#define ERROR 259
#define VOID 260
#define IF 261
#define ELSE 262
#define FOR 263
#define RETURN 264
#define POINTER_INDIRECTION 265
#define LESS_THAN_OR_EQUAL 266
#define GREATER_THAN_OR_EQUAL 267
#define EQUAL_TO 268
#define NOT_EQUAL_TO 269
#define LOGICAL_OR 270
#define LOGICAL_AND 271
#define OPEN_SQUARE_BRACKET 272
#define CLOSE_SQUARE_BRACKET 273
#define OPEN_BRACKET 274
#define CLOSE_BRACKET 275
#define OPEN_FLOWER_BRACKET 276
#define CLOSE_FLOWER_BRACKET 277
#define AND 278
#define MULT 279
#define ADD 280
#define SUB 281
#define DIVIDE 282
#define REMAINDER 283
#define NOT 284
#define QUESTION_MARK 285
#define LESS_THAN 286
#define GREATER_THAN 287
#define EQUAL 288
#define COLON 289
#define SEMI_COLON 290
#define COMMA 291
#define CHAR 292
#define INT 293
#define IDENTIFIER 294
#define INTEGER_CONSTANT 295
#define CHAR_CONSTANT 296
#define STRING_LITERAL 297

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 15 "A5_19.y"
//Expanation for every data type is specified in .h file.
    int intval;
    char charval;
    char* strval;
    struct attribute_expression attribute_exp;
    class data_type *datatype;
    class parameter_type *parametertype;
    quad_data_types attribute_unary;
    int instr;
    struct lnode *N_attr;
    struct parameter_list *param_attr;

#line 170 "y.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
