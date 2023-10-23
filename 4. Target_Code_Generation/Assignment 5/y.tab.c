/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "A5_19.y"

    #include<bits/stdc++.h>
    #include "A5_19_translator.h"
    extern int yylex();
    void yyerror(const char*);
    extern char* yytext;
    extern int yylineno;
    using namespace std;

#line 81 "y.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

/* Use api.header.include to #include this header
   instead of duplicating it here.  */
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

#line 120 "y.tab.c"

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

#line 237 "y.tab.c"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_COMMENT = 3,                    /* COMMENT  */
  YYSYMBOL_ERROR = 4,                      /* ERROR  */
  YYSYMBOL_VOID = 5,                       /* VOID  */
  YYSYMBOL_IF = 6,                         /* IF  */
  YYSYMBOL_ELSE = 7,                       /* ELSE  */
  YYSYMBOL_FOR = 8,                        /* FOR  */
  YYSYMBOL_RETURN = 9,                     /* RETURN  */
  YYSYMBOL_POINTER_INDIRECTION = 10,       /* POINTER_INDIRECTION  */
  YYSYMBOL_LESS_THAN_OR_EQUAL = 11,        /* LESS_THAN_OR_EQUAL  */
  YYSYMBOL_GREATER_THAN_OR_EQUAL = 12,     /* GREATER_THAN_OR_EQUAL  */
  YYSYMBOL_EQUAL_TO = 13,                  /* EQUAL_TO  */
  YYSYMBOL_NOT_EQUAL_TO = 14,              /* NOT_EQUAL_TO  */
  YYSYMBOL_LOGICAL_OR = 15,                /* LOGICAL_OR  */
  YYSYMBOL_LOGICAL_AND = 16,               /* LOGICAL_AND  */
  YYSYMBOL_OPEN_SQUARE_BRACKET = 17,       /* OPEN_SQUARE_BRACKET  */
  YYSYMBOL_CLOSE_SQUARE_BRACKET = 18,      /* CLOSE_SQUARE_BRACKET  */
  YYSYMBOL_OPEN_BRACKET = 19,              /* OPEN_BRACKET  */
  YYSYMBOL_CLOSE_BRACKET = 20,             /* CLOSE_BRACKET  */
  YYSYMBOL_OPEN_FLOWER_BRACKET = 21,       /* OPEN_FLOWER_BRACKET  */
  YYSYMBOL_CLOSE_FLOWER_BRACKET = 22,      /* CLOSE_FLOWER_BRACKET  */
  YYSYMBOL_AND = 23,                       /* AND  */
  YYSYMBOL_MULT = 24,                      /* MULT  */
  YYSYMBOL_ADD = 25,                       /* ADD  */
  YYSYMBOL_SUB = 26,                       /* SUB  */
  YYSYMBOL_DIVIDE = 27,                    /* DIVIDE  */
  YYSYMBOL_REMAINDER = 28,                 /* REMAINDER  */
  YYSYMBOL_NOT = 29,                       /* NOT  */
  YYSYMBOL_QUESTION_MARK = 30,             /* QUESTION_MARK  */
  YYSYMBOL_LESS_THAN = 31,                 /* LESS_THAN  */
  YYSYMBOL_GREATER_THAN = 32,              /* GREATER_THAN  */
  YYSYMBOL_EQUAL = 33,                     /* EQUAL  */
  YYSYMBOL_COLON = 34,                     /* COLON  */
  YYSYMBOL_SEMI_COLON = 35,                /* SEMI_COLON  */
  YYSYMBOL_COMMA = 36,                     /* COMMA  */
  YYSYMBOL_CHAR = 37,                      /* CHAR  */
  YYSYMBOL_INT = 38,                       /* INT  */
  YYSYMBOL_IDENTIFIER = 39,                /* IDENTIFIER  */
  YYSYMBOL_INTEGER_CONSTANT = 40,          /* INTEGER_CONSTANT  */
  YYSYMBOL_CHAR_CONSTANT = 41,             /* CHAR_CONSTANT  */
  YYSYMBOL_STRING_LITERAL = 42,            /* STRING_LITERAL  */
  YYSYMBOL_YYACCEPT = 43,                  /* $accept  */
  YYSYMBOL_primary_expression = 44,        /* primary_expression  */
  YYSYMBOL_postfix_expression = 45,        /* postfix_expression  */
  YYSYMBOL_argument_expression_list = 46,  /* argument_expression_list  */
  YYSYMBOL_unary_expression = 47,          /* unary_expression  */
  YYSYMBOL_unary_operator = 48,            /* unary_operator  */
  YYSYMBOL_multiplicative_expression = 49, /* multiplicative_expression  */
  YYSYMBOL_additive_expression = 50,       /* additive_expression  */
  YYSYMBOL_relational_expression = 51,     /* relational_expression  */
  YYSYMBOL_equality_expression = 52,       /* equality_expression  */
  YYSYMBOL_logical_AND_expression = 53,    /* logical_AND_expression  */
  YYSYMBOL_logical_OR_expression = 54,     /* logical_OR_expression  */
  YYSYMBOL_conditional_expression = 55,    /* conditional_expression  */
  YYSYMBOL_assignment_expression = 56,     /* assignment_expression  */
  YYSYMBOL_expression = 57,                /* expression  */
  YYSYMBOL_internal_declaration = 58,      /* internal_declaration  */
  YYSYMBOL_direct_declarator = 59,         /* direct_declarator  */
  YYSYMBOL_non_void_type_specifier = 60,   /* non_void_type_specifier  */
  YYSYMBOL_declarator = 61,                /* declarator  */
  YYSYMBOL_pointer = 62,                   /* pointer  */
  YYSYMBOL_parameter_list2 = 63,           /* parameter_list2  */
  YYSYMBOL_parameter_declaration2 = 64,    /* parameter_declaration2  */
  YYSYMBOL_initializer = 65,               /* initializer  */
  YYSYMBOL_statement = 66,                 /* statement  */
  YYSYMBOL_compound_statement = 67,        /* compound_statement  */
  YYSYMBOL_block_item_list = 68,           /* block_item_list  */
  YYSYMBOL_block_item = 69,                /* block_item  */
  YYSYMBOL_expression_statement = 70,      /* expression_statement  */
  YYSYMBOL_selection_statement = 71,       /* selection_statement  */
  YYSYMBOL_iteration_statement = 72,       /* iteration_statement  */
  YYSYMBOL_jump_statement = 73,            /* jump_statement  */
  YYSYMBOL_translation_unit = 74,          /* translation_unit  */
  YYSYMBOL_function = 75,                  /* function  */
  YYSYMBOL_function_definition = 76,       /* function_definition  */
  YYSYMBOL_77_1 = 77,                      /* $@1  */
  YYSYMBOL_78_2 = 78,                      /* $@2  */
  YYSYMBOL_79_3 = 79,                      /* $@3  */
  YYSYMBOL_80_4 = 80,                      /* $@4  */
  YYSYMBOL_81_5 = 81,                      /* $@5  */
  YYSYMBOL_82_6 = 82,                      /* $@6  */
  YYSYMBOL_83_7 = 83,                      /* $@7  */
  YYSYMBOL_84_8 = 84,                      /* $@8  */
  YYSYMBOL_85_9 = 85,                      /* $@9  */
  YYSYMBOL_86_10 = 86,                     /* $@10  */
  YYSYMBOL_87_11 = 87,                     /* $@11  */
  YYSYMBOL_88_12 = 88,                     /* $@12  */
  YYSYMBOL_M = 89,                         /* M  */
  YYSYMBOL_N = 90,                         /* N  */
  YYSYMBOL_O = 91,                         /* O  */
  YYSYMBOL_F = 92                          /* F  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  16
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   314

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  43
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  50
/* YYNRULES -- Number of rules.  */
#define YYNRULES  123
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  242

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   297


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   135,   135,   191,   202,   213,   232,   237,   238,   277,
     314,   371,   376,   379,   384,   397,   573,   574,   575,   576,
     577,   580,   637,   711,   784,   858,   859,   875,   893,   894,
     905,   916,   927,   940,   941,   952,   965,   966,   974,   975,
     983,   984,  1010,  1011,  1142,  1148,  1188,  1216,  1227,  1236,
    1257,  1262,  1268,  1275,  1286,  1292,  1297,  1309,  1314,  1319,
    1324,  1331,  1375,  1376,  1377,  1378,  1379,  1382,  1383,  1386,
    1389,  1395,  1398,  1403,  1404,  1409,  1424,  1432,  1461,  1478,
    1501,  1523,  1527,  1530,  1548,  1566,  1584,  1602,  1620,  1638,
    1656,  1674,  1692,  1710,  1728,  1746,  1751,  1751,  1787,  1787,
    1823,  1823,  1910,  1910,  1995,  1995,  2031,  2031,  2068,  2068,
    2106,  2106,  2142,  2142,  2228,  2228,  2313,  2313,  2349,  2349,
    2386,  2393,  2402,  2407
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "COMMENT", "ERROR",
  "VOID", "IF", "ELSE", "FOR", "RETURN", "POINTER_INDIRECTION",
  "LESS_THAN_OR_EQUAL", "GREATER_THAN_OR_EQUAL", "EQUAL_TO",
  "NOT_EQUAL_TO", "LOGICAL_OR", "LOGICAL_AND", "OPEN_SQUARE_BRACKET",
  "CLOSE_SQUARE_BRACKET", "OPEN_BRACKET", "CLOSE_BRACKET",
  "OPEN_FLOWER_BRACKET", "CLOSE_FLOWER_BRACKET", "AND", "MULT", "ADD",
  "SUB", "DIVIDE", "REMAINDER", "NOT", "QUESTION_MARK", "LESS_THAN",
  "GREATER_THAN", "EQUAL", "COLON", "SEMI_COLON", "COMMA", "CHAR", "INT",
  "IDENTIFIER", "INTEGER_CONSTANT", "CHAR_CONSTANT", "STRING_LITERAL",
  "$accept", "primary_expression", "postfix_expression",
  "argument_expression_list", "unary_expression", "unary_operator",
  "multiplicative_expression", "additive_expression",
  "relational_expression", "equality_expression", "logical_AND_expression",
  "logical_OR_expression", "conditional_expression",
  "assignment_expression", "expression", "internal_declaration",
  "direct_declarator", "non_void_type_specifier", "declarator", "pointer",
  "parameter_list2", "parameter_declaration2", "initializer", "statement",
  "compound_statement", "block_item_list", "block_item",
  "expression_statement", "selection_statement", "iteration_statement",
  "jump_statement", "translation_unit", "function", "function_definition",
  "$@1", "$@2", "$@3", "$@4", "$@5", "$@6", "$@7", "$@8", "$@9", "$@10",
  "$@11", "$@12", "M", "N", "O", "F", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-205)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-122)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      43,    17,  -205,  -205,  -205,    51,    32,    43,  -205,  -205,
      98,    56,    74,  -205,  -205,    94,  -205,  -205,    20,    80,
    -205,    58,    23,   272,  -205,   149,  -205,    22,    27,   101,
     107,    99,   132,   129,    46,   143,    76,   146,   147,   272,
    -205,  -205,  -205,  -205,  -205,  -205,  -205,  -205,  -205,  -205,
     119,   152,  -205,   115,    12,    18,   112,   170,    29,  -205,
    -205,   158,    84,   160,   148,  -205,   175,  -205,  -205,   159,
     162,    49,   108,   164,   180,   168,   176,  -205,   175,   184,
    -205,   190,   187,   272,   134,   272,   272,   272,   272,   272,
     272,   272,   272,   272,   272,   272,   272,   272,  -205,  -205,
     185,  -205,   125,   193,   210,  -205,   175,  -205,   183,  -205,
    -205,  -205,   175,    99,  -205,   200,  -205,   175,   201,  -205,
    -205,   175,  -205,  -205,   175,  -205,  -205,   221,  -205,    11,
    -205,  -205,  -205,  -205,  -205,  -205,  -205,   115,   115,    12,
      12,    12,    12,    18,    18,   272,   272,  -205,   207,  -205,
     175,   209,  -205,    99,   233,   235,   240,  -205,  -205,   225,
    -205,    77,  -205,  -205,   246,  -205,  -205,  -205,  -205,  -205,
    -205,  -205,  -205,   175,  -205,  -205,   175,  -205,  -205,  -205,
    -205,  -205,   272,   112,   170,   272,  -205,   175,  -205,  -205,
     175,  -205,   223,   272,   264,  -205,   241,  -205,    59,   223,
    -205,   208,  -205,  -205,  -205,  -205,  -205,  -205,  -205,  -205,
    -205,  -205,  -205,  -205,  -205,  -205,  -205,  -205,  -205,   236,
    -205,  -205,   257,   264,  -205,  -205,  -205,   272,   232,  -205,
    -205,  -205,   272,   271,  -205,  -205,   265,   232,  -205,  -205,
     232,  -205
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,     0,    50,    51,    82,     0,     0,    80,    95,    54,
       0,     0,     0,    52,    45,     0,     1,    81,     0,     0,
      46,     0,     0,     0,    48,     0,    53,     0,    96,    50,
      51,     0,     0,    55,     0,     0,     0,   108,     0,     0,
      16,    17,    18,    19,    20,     2,     3,     4,     5,     7,
      14,    21,   122,    25,    28,    33,    36,    38,    40,    42,
      61,     0,     0,   104,     0,    84,     0,    58,    57,     0,
     100,     0,     0,    98,     0,     0,   116,    90,     0,   112,
      44,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   120,   120,
       0,    49,     0,   110,     0,    85,     0,    60,     0,   123,
      59,    87,     0,     0,    56,   106,    83,     0,   102,    47,
      91,     0,   123,    93,     0,     6,    11,     0,     9,     0,
      12,    43,    15,    22,    23,    24,    21,    26,    27,    31,
      32,    29,    30,    34,    35,     0,     0,   120,   118,    89,
       0,   114,   123,     0,     0,     0,     0,    67,    73,     0,
      71,     0,    72,    62,   120,    69,    63,    64,    65,    66,
      97,   123,    86,     0,   123,    88,     0,   123,   109,   123,
       8,    10,     0,    37,    39,     0,    92,     0,   123,    94,
       0,   105,     0,     0,     0,    78,     0,    74,     0,     0,
      68,     0,   101,   123,    99,   123,   117,   113,    13,   121,
     123,   111,   123,   121,   120,    79,    70,   107,   103,     0,
     119,   115,     0,     0,   120,   120,   121,     0,     0,   120,
      41,   121,     0,    76,   121,   120,     0,     0,   120,    75,
       0,    77
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -205,  -205,  -205,  -205,   -77,  -205,    79,    85,    75,   139,
     140,  -205,    65,   -20,   -38,   -87,    -9,     0,  -205,     3,
       1,  -205,  -205,  -204,   -39,  -205,    93,  -168,  -205,  -205,
    -205,   293,  -205,  -205,  -205,  -205,  -205,  -205,  -205,  -205,
    -205,  -205,  -205,  -205,  -205,  -205,   -94,  -107,  -205,  -100
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,    49,    50,   129,    51,    52,    53,    54,    55,    56,
      57,    58,    59,    80,   159,     4,    13,    31,    14,    64,
      32,    33,    61,   162,   163,   164,   165,   166,   167,   168,
     169,     6,     7,     8,    66,   117,   112,   176,   106,   173,
      78,   150,   124,   190,   121,   187,   145,   100,    86,   170
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
       5,    81,    20,    60,    11,   146,    26,     5,    15,   132,
     133,   134,   135,   136,   136,   136,   136,   136,   136,   136,
     136,   160,   178,    38,   231,    27,   214,   109,    36,    92,
      93,   181,    16,   239,    69,    74,   241,    90,    91,   122,
      28,     9,    63,    37,    99,   127,     9,   182,     1,    94,
      95,    72,   191,   185,   113,   226,    10,    29,    30,  -121,
      29,    30,    65,   104,   130,   131,    73,   152,   136,   136,
     201,   202,   114,   171,   204,     9,    21,   206,   174,   207,
       2,     3,   177,    29,    30,   179,    29,    30,   211,   102,
      12,    21,    23,    22,    24,    19,    76,    21,    35,    34,
       9,     9,   219,   217,   103,   218,   222,    23,   161,    24,
     220,   188,   221,    23,   160,    24,   198,    18,   196,   229,
     223,    29,    30,     9,   233,    96,    97,   236,   115,    82,
     227,   228,     9,    25,   203,   232,    83,   205,    84,    87,
      67,   237,    88,    89,   240,   148,    68,   209,   210,     9,
     136,   212,    70,    39,   128,   213,   192,    40,    41,    42,
      43,    75,   208,    44,   199,    71,    21,    79,    62,   137,
     138,   143,   144,    45,    46,    47,    48,   139,   140,   141,
     142,    77,    23,    20,    24,    85,    98,   107,   153,   154,
      26,   155,   156,   101,   234,   105,   108,   111,   110,   116,
     118,   161,    39,   119,   108,   157,    40,    41,    42,    43,
     125,   120,    44,   153,   154,   147,   155,   156,   158,   123,
       2,     3,    45,    46,    47,    48,   126,    39,   149,   108,
     151,    40,    41,    42,    43,   172,   175,    44,   154,   180,
     155,   156,   186,   158,   189,     2,     3,    45,    46,    47,
      48,    39,   193,   108,   194,    40,    41,    42,    43,    39,
     197,    44,   198,    40,    41,    42,    43,   158,   200,    44,
     224,    45,    46,    47,    48,   195,   215,   225,   235,    45,
      46,    47,    48,    39,   183,   238,   184,    40,    41,    42,
      43,    39,   230,    44,   216,    40,    41,    42,    43,   158,
      17,    44,     0,    45,    46,    47,    48,     0,     0,     0,
       0,    45,    46,    47,    48
};

static const yytype_int16 yycheck[] =
{
       0,    39,    11,    23,     1,    99,    15,     7,     5,    86,
      87,    88,    89,    90,    91,    92,    93,    94,    95,    96,
      97,   108,   122,    22,   228,     5,   194,    66,     5,    11,
      12,    20,     0,   237,    31,    34,   240,    25,    26,    78,
      20,    24,    20,    20,    15,    83,    24,    36,     5,    31,
      32,     5,   152,   147,     5,   223,    39,    37,    38,    30,
      37,    38,    35,    62,    84,    85,    20,   106,   145,   146,
     164,   171,    71,   112,   174,    24,    17,   177,   117,   179,
      37,    38,   121,    37,    38,   124,    37,    38,   188,     5,
      39,    17,    33,    19,    35,    39,    20,    17,    40,    19,
      24,    24,   209,   203,    20,   205,   213,    33,   108,    35,
     210,   150,   212,    33,   201,    35,    39,    19,   156,   226,
     214,    37,    38,    24,   231,    13,    14,   234,    20,    10,
     224,   225,    24,    39,   173,   229,    17,   176,    19,    24,
      39,   235,    27,    28,   238,    20,    39,   185,   187,    24,
     227,   190,    20,    19,    20,   193,   153,    23,    24,    25,
      26,    18,   182,    29,   161,    36,    17,    20,    19,    90,
      91,    96,    97,    39,    40,    41,    42,    92,    93,    94,
      95,    35,    33,   192,    35,    33,    16,    39,     5,     6,
     199,     8,     9,    35,   232,    35,    21,    35,    39,    35,
      20,   201,    19,    35,    21,    22,    23,    24,    25,    26,
      20,    35,    29,     5,     6,    30,     8,     9,    35,    35,
      37,    38,    39,    40,    41,    42,    39,    19,    35,    21,
      20,    23,    24,    25,    26,    35,    35,    29,     6,    18,
       8,     9,    35,    35,    35,    37,    38,    39,    40,    41,
      42,    19,    19,    21,    19,    23,    24,    25,    26,    19,
      35,    29,    39,    23,    24,    25,    26,    35,    22,    29,
      34,    39,    40,    41,    42,    35,    35,    20,     7,    39,
      40,    41,    42,    19,   145,    20,   146,    23,    24,    25,
      26,    19,   227,    29,   201,    23,    24,    25,    26,    35,
       7,    29,    -1,    39,    40,    41,    42,    -1,    -1,    -1,
      -1,    39,    40,    41,    42
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     5,    37,    38,    58,    60,    74,    75,    76,    24,
      39,    62,    39,    59,    61,    62,     0,    74,    19,    39,
      59,    17,    19,    33,    35,    39,    59,     5,    20,    37,
      38,    60,    63,    64,    19,    40,     5,    20,    63,    19,
      23,    24,    25,    26,    29,    39,    40,    41,    42,    44,
      45,    47,    48,    49,    50,    51,    52,    53,    54,    55,
      56,    65,    19,    20,    62,    35,    77,    39,    39,    62,
      20,    36,     5,    20,    63,    18,    20,    35,    83,    20,
      56,    57,    10,    17,    19,    33,    91,    24,    27,    28,
      25,    26,    11,    12,    31,    32,    13,    14,    16,    15,
      90,    35,     5,    20,    63,    35,    81,    39,    21,    67,
      39,    35,    79,     5,    63,    20,    35,    78,    20,    35,
      35,    87,    67,    35,    85,    20,    39,    57,    20,    46,
      56,    56,    47,    47,    47,    47,    47,    49,    49,    50,
      50,    50,    50,    51,    51,    89,    89,    30,    20,    35,
      84,    20,    67,     5,     6,     8,     9,    22,    35,    57,
      58,    60,    66,    67,    68,    69,    70,    71,    72,    73,
      92,    67,    35,    82,    67,    35,    80,    67,    92,    67,
      18,    20,    36,    52,    53,    89,    35,    88,    67,    35,
      86,    92,    62,    19,    19,    35,    57,    35,    39,    62,
      22,    89,    92,    67,    92,    67,    92,    92,    56,    57,
      67,    92,    67,    57,    70,    35,    69,    92,    92,    90,
      92,    92,    90,    89,    34,    20,    70,    89,    89,    90,
      55,    66,    89,    90,    57,     7,    90,    89,    20,    66,
      89,    66
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    43,    44,    44,    44,    44,    44,    45,    45,    45,
      45,    45,    46,    46,    47,    47,    48,    48,    48,    48,
      48,    49,    49,    49,    49,    50,    50,    50,    51,    51,
      51,    51,    51,    52,    52,    52,    53,    53,    54,    54,
      55,    55,    56,    56,    57,    58,    58,    59,    59,    59,
      60,    60,    61,    61,    62,    63,    63,    64,    64,    64,
      64,    65,    66,    66,    66,    66,    66,    67,    67,    68,
      68,    69,    69,    70,    70,    71,    71,    72,    73,    73,
      74,    74,    75,    75,    75,    75,    75,    75,    75,    75,
      75,    75,    75,    75,    75,    75,    77,    76,    78,    76,
      79,    76,    80,    76,    81,    76,    82,    76,    83,    76,
      84,    76,    85,    76,    86,    76,    87,    76,    88,    76,
      89,    90,    91,    92
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     1,     1,     1,     3,     1,     4,     3,
       4,     3,     1,     3,     1,     3,     1,     1,     1,     1,
       1,     1,     3,     3,     3,     1,     3,     3,     1,     3,
       3,     3,     3,     1,     3,     3,     1,     4,     1,     4,
       1,     9,     1,     3,     1,     2,     3,     5,     2,     4,
       1,     1,     1,     2,     1,     1,     3,     2,     2,     3,
       3,     1,     1,     1,     1,     1,     1,     2,     3,     1,
       3,     1,     1,     1,     2,    11,     8,    12,     2,     3,
       1,     2,     1,     6,     5,     6,     7,     6,     7,     6,
       5,     6,     7,     6,     7,     1,     0,     7,     0,     8,
       0,     8,     0,     9,     0,     8,     0,     9,     0,     7,
       0,     8,     0,     8,     0,     9,     0,     8,     0,     9,
       0,     0,     0,     0
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* primary_expression: IDENTIFIER  */
#line 135 "A5_19.y"
                                  {
                            symbol_table_record* x = curr_table->lookup((yyvsp[0].datatype)->name);
                            if(!x)
                                x = global_table->lookup((yyvsp[0].datatype)->name);

                            if(x == nullptr){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error47!\n";
                                yyerror(semantic);
                            }

                            (yyval.attribute_exp).loc = x;
                            (yyvsp[0].datatype)->loc = x;
                            //$$.type = ($1.loc)->Type;
                            date_types dt;
                            string ss = (x->type)[0];
                            if(((x->type).size())>1){
                                dt = FUNCTION;
                                (yyval.attribute_exp).type = new_node(dt,-1);
                            }
                            else if(x->array_ind == 1){
                                // cout<<$1->name<<endl;
                                dt = ARRAY;
                                // $$.type = new_node(dt,x->size);
                                if(ss.compare("INT")==0){
                                    (yyval.attribute_exp).type = new_node(dt,-1);
                                    (yyval.attribute_exp).type->up = INT_;
                                }
                                else if(ss.compare("CHAR")==0){
                                    (yyval.attribute_exp).type = new_node(dt,-1);
                                    (yyval.attribute_exp).type->up = CHAR_;
                                }
                                else if(ss.compare("INT*")==0){
                                    (yyval.attribute_exp).type = new_node(dt,-1);
                                    (yyval.attribute_exp).type->up = INT_PTR;
                                }
                                else if(ss.compare("CHAR*")==0){
                                    (yyval.attribute_exp).type = new_node(dt,-1);
                                    (yyval.attribute_exp).type->up = CHAR_PTR;
                                }
                            }
                            else{
                                // cout<<$1->name<<endl;
                                if(ss.compare("INT")==0) (yyval.attribute_exp).type = new_node(INT_,-1);
                                else if(ss.compare("INT")==0 && x->array_ind==1) (yyval.attribute_exp).type = new_node(INT_PTR,-1);
                                else if(ss.compare("CHAR")==0) (yyval.attribute_exp).type = new_node(CHAR_,-1);
                                else if(ss.compare("CHAR")==0 && x->array_ind==1) (yyval.attribute_exp).type = new_node(CHAR_PTR,-1);
                                else if(ss.compare("INT*")==0) (yyval.attribute_exp).type = new_node(INT_PTR,-1);
                                else if(ss.compare("CHAR*")==0) (yyval.attribute_exp).type = new_node(CHAR_PTR,-1);
                                else if(ss.compare("VOID*")==0) (yyval.attribute_exp).type = new_node(PTR,-1);
                                // $$.type = new_node(dt,-1);
                            }

                            (yyval.attribute_exp).array = (yyval.attribute_exp).loc;
                            (yyval.attribute_exp).loc1 = 0;
                        }
#line 1551 "y.tab.c"
    break;

  case 3: /* primary_expression: INTEGER_CONSTANT  */
#line 191 "A5_19.y"
                                          {
                            (yyval.attribute_exp).val.int_data = (yyvsp[0].intval);
                            (yyval.attribute_exp).ind=1;
                            (yyval.attribute_exp).type = new_node(INT_,-1);
                            (yyval.attribute_exp).loc = curr_table->gentemp(INT_);
                            char *arg1 = new char[10];
                            sprintf(arg1,"%d",(yyvsp[0].intval));
                            char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                            fields_quad x(arg1,0,res,ASSIGN,0,0,(yyval.attribute_exp).loc);
                            quad_array->emit(x);
                        }
#line 1567 "y.tab.c"
    break;

  case 4: /* primary_expression: CHAR_CONSTANT  */
#line 202 "A5_19.y"
                                       {
                            (yyval.attribute_exp).val.char_data = (yyvsp[0].charval);
                            (yyval.attribute_exp).ind=2;
                            (yyval.attribute_exp).type = new_node(CHAR_,-1);
                            (yyval.attribute_exp).loc = curr_table->gentemp(CHAR_);
                            char *arg1 = new char[10];
                            sprintf(arg1,"'%c'",(yyvsp[0].charval));
                            char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                            fields_quad x(arg1,0,res,ASSIGN,0,0,(yyval.attribute_exp).loc);
                            quad_array->emit(x);
                        }
#line 1583 "y.tab.c"
    break;

  case 5: /* primary_expression: STRING_LITERAL  */
#line 213 "A5_19.y"
                                        {
                            char* temp = (yyvsp[0].strval);
                            int count = 0;
                            for(int i=0;temp[i]!='\0';i++) count++;
                            count-=2;
                            (yyval.attribute_exp).val.str_data = (yyvsp[0].strval);
                            (yyval.attribute_exp).ind=2;
                            (yyval.attribute_exp).type = new_node(STRING_,count);
                            (yyval.attribute_exp).loc = curr_table->gentemp3(STRING_,count);
                            ((yyval.attribute_exp).loc)->array_ind = 1;
                            ((yyval.attribute_exp).loc)->initial_value = temp;
                            char *arg1 = new char[10];
                            //sprintf(arg1,"%s",$1);
                            arg1 = temp;
                            char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                            fields_quad x(arg1,0,res,ASSIGN,0,0,(yyval.attribute_exp).loc);
                            quad_array->emit(x); 
                            // cout<<($$.loc)->array_ind<<" "<<($$.loc)->name<<endl;
                        }
#line 1607 "y.tab.c"
    break;

  case 6: /* primary_expression: OPEN_BRACKET expression CLOSE_BRACKET  */
#line 232 "A5_19.y"
                                                               {
                            (yyval.attribute_exp) = (yyvsp[-1].attribute_exp);
                        }
#line 1615 "y.tab.c"
    break;

  case 7: /* postfix_expression: primary_expression  */
#line 237 "A5_19.y"
                                           {(yyval.attribute_exp) = (yyvsp[0].attribute_exp);}
#line 1621 "y.tab.c"
    break;

  case 8: /* postfix_expression: postfix_expression OPEN_SQUARE_BRACKET expression CLOSE_SQUARE_BRACKET  */
#line 238 "A5_19.y"
                                                                                                {
                            // cout<<"Testing..."<<endl;
                            (yyval.attribute_exp).array = (yyvsp[-3].attribute_exp).array;
                            (yyval.attribute_exp).type = (yyvsp[-3].attribute_exp).type;
                            // cout<<"Testing..."<<endl;
                            switch((yyvsp[-3].attribute_exp).type->down){
			                    case ARRAY : 
                                    switch((yyvsp[-3].attribute_exp).type->up){
                                        case INT_ : (yyval.attribute_exp).type->down = INT_ ;break;
                                        case CHAR_ : (yyval.attribute_exp).type->down = CHAR_ ;break;
                                    }
                                    break;
                            }
                            // cout<<"Testing..."<<endl;
                            // cout<<($1.type->down)<<endl;
                            if(!((yyvsp[-3].attribute_exp).loc1)){
                                // cout<<"Testing"<<endl;
                                (yyval.attribute_exp).loc1 = curr_table->gentemp(INT_);
                                // int m = compute_width($1.type);
                                // int m = 1;
                                char *arg1 = strdup((((yyvsp[-1].attribute_exp).loc)->name).c_str());
                                // char *arg2 = new char[10];
                                // sprintf(arg2,"%d",m);
                                
                                char *res = strdup((((yyval.attribute_exp).loc1)->name).c_str());
                                // cout<<arg1<<" "<<arg2<<" "<<res<<endl;
                                //t0 0 t1
                                fields_quad y(arg1,0,res,ASSIGN,(yyvsp[-1].attribute_exp).loc,0,(yyval.attribute_exp).loc1);
                                quad_array->emit(y);
                                // cout<<($3.loc)->name<<" "<<($$.loc1)->name<<endl;
                                // global_table->print();
                                // printf(" %s = %s * %s\n",res,arg1,arg2);
                            }
                            else{
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error1!\n";
                                yyerror(semantic);
                            }
                        }
#line 1665 "y.tab.c"
    break;

  case 9: /* postfix_expression: postfix_expression OPEN_BRACKET CLOSE_BRACKET  */
#line 277 "A5_19.y"
                                                                       {
                            int count = 0;
                            symbol_table_record *t = global_table->lookup((((yyvsp[-2].attribute_exp).loc)->name));
                            // if(t->nested_table==nullptr){
                            //     cout<<"Semantic Error..."<<endl;
                            //     exit(0);
                            // }
                            // string ss = curr_table->gentemp2(t->type[(t->type).size()-1]);
                            // string ss = t->type[(t->type).size()-1];
                            (yyval.attribute_exp).loc = curr_table->gentemp2(t->type[(t->type).size()-1]);
                            char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                            char *arg1 = strdup((((yyvsp[-2].attribute_exp).loc)->name).c_str());
                            char *arg2 = new char[10];
                            sprintf(arg2,"%d",count);
                            fields_quad x(arg1,arg2,res,call,(yyvsp[-2].attribute_exp).loc,0,(yyval.attribute_exp).loc);
                            quad_array->emit(x);

                            date_types dt;
                            string ss = ((yyval.attribute_exp).loc)->type[0];
                            if((((yyval.attribute_exp).loc)->type).size()>1){
                                dt = FUNCTION;
                                (yyval.attribute_exp).type = new_node(dt,-1);
                            }
                            else if(((((yyval.attribute_exp).loc)->size)>1 && ss.compare("CHAR")==0) || ((((yyval.attribute_exp).loc)->size)>4 && ss.compare("INT")==0)){
                                dt = ARRAY;
                                (yyval.attribute_exp).type = new_node(dt,((yyval.attribute_exp).loc)->size);
                            }
                            else{
                                if(ss.compare("INT")==0) dt = INT_ ;
                                else if(ss.compare("CHAR")==0) dt = CHAR_ ;
                                else if(ss.compare("INT*")==0) dt = INT_PTR ;
                                else if(ss.compare("CHAR*")==0) dt = CHAR_PTR ;
                                else if(ss.compare("VOID*")==0) dt = PTR ;
                                (yyval.attribute_exp).type = new_node(dt,-1);
                            }
                            
                        }
#line 1707 "y.tab.c"
    break;

  case 10: /* postfix_expression: postfix_expression OPEN_BRACKET argument_expression_list CLOSE_BRACKET  */
#line 314 "A5_19.y"
                                                                                                {
                            // cout<<"Testing..."<<endl;
                            parameter_list *temp = (yyvsp[-1].param_attr);
                            symbol_table_record *t = global_table->lookup(((yyvsp[-3].attribute_exp).loc)->name);
                            // cout<<"Testing..."<<endl;
                            int count = 0;
                            while(temp){
                                string s = ((temp->parameter)[0].type[0]);
                                // cout<<s<<" "<<(t->type[count])<<" done"<<endl;
                                if(s.compare((t->type[count])) != 0){
                                    // cout<<(temp->parameter)[0].array_ind<<" "<<(temp->parameter)[0].name<<endl;
                                    if((t->type[count]).compare("CHAR*")==0 && s.compare("CHAR")==0 && (temp->parameter)[0].array_ind == 1){
                                        // Nothing to do here.
                                    }
                                    else if((t->type[count]).compare("INT*")==0 && s.compare("INT")==0 && (temp->parameter)[0].array_ind == 1){
                                        // Nothing to do here.
                                    }
                                    else{
                                        global_table->print();
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error60!\n";
                                        yyerror(semantic);
                                    }
                                }
                                char *arg1 = strdup(((temp->parameter)->name).c_str());
                                fields_quad x(arg1,0,0,PARAM,temp->parameter,0,0);
                                quad_array->emit(x);
                                count++;
                                temp = temp->next;
                            }
                            
                            // cout<<"Testing..."<<endl;
                            // if(t->nested_table==nullptr){
                            //     cout<<"Semantic Error"<<endl;
                            //     exit(0);
                            // }
                            // string ss = ((((t->nested_table)->list)[count]).type)[((((t->nested_table)->list)[count]).type).size()-1];
                            // string ss = curr_table->gentemp2(t->type[(t->type).size()-1]);
                            // cout<<"Testing..."<<endl;
                            string ss = t->type[0];
                            (yyval.attribute_exp).loc = curr_table->gentemp2(t->type[(t->type).size()-1]);
                            char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                            char *arg1 = strdup((((yyvsp[-3].attribute_exp).loc)->name).c_str());
                            char *arg2 = new char[10];
                            sprintf(arg2,"%d",count);
                            fields_quad x(arg1,arg2,res,call,(yyvsp[-3].attribute_exp).loc,0,(yyval.attribute_exp).loc);
                            quad_array->emit(x);

                            date_types dt;
                            if(ss.compare("INT")==0) dt = INT_ ;
                            else if(ss.compare("CHAR")==0) dt = CHAR_ ;
                            else if(ss.compare("INT*")==0) dt = INT_PTR ;
                            else if(ss.compare("CHAR*")==0) dt = CHAR_PTR ;
                            else if(ss.compare("VOID*")==0) dt = PTR ;

                            (yyval.attribute_exp).type = new_node(dt,-1);
                        }
#line 1769 "y.tab.c"
    break;

  case 11: /* postfix_expression: postfix_expression POINTER_INDIRECTION IDENTIFIER  */
#line 371 "A5_19.y"
                                                                           {
                            // not to be implemented
                        }
#line 1777 "y.tab.c"
    break;

  case 12: /* argument_expression_list: assignment_expression  */
#line 376 "A5_19.y"
                                             {
                            (yyval.param_attr) = make_param_list((yyvsp[0].attribute_exp).loc);
                        }
#line 1785 "y.tab.c"
    break;

  case 13: /* argument_expression_list: argument_expression_list COMMA assignment_expression  */
#line 379 "A5_19.y"
                                                                              {
                            (yyval.param_attr) = merge_param_list((yyvsp[-2].param_attr),make_param_list((yyvsp[0].attribute_exp).loc));
                        }
#line 1793 "y.tab.c"
    break;

  case 14: /* unary_expression: postfix_expression  */
#line 384 "A5_19.y"
                                           {
                            (yyval.attribute_exp) = (yyvsp[0].attribute_exp);
                            (yyval.attribute_exp) = (yyvsp[0].attribute_exp);
                            // cout<<"unary_expression "<<address_ind<<endl;
                            if((yyvsp[0].attribute_exp).loc1 && (address_ind == 0)){
                                (yyval.attribute_exp).loc = curr_table->gentemp(((yyvsp[0].attribute_exp).type)->down);
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).array)->name).c_str());
                                char *arg2 = strdup((((yyvsp[0].attribute_exp).loc1)->name).c_str());
                                char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                                fields_quad x(arg1,arg2,res,EQ_BRACKET,(yyvsp[0].attribute_exp).loc,(yyvsp[0].attribute_exp).loc1,(yyval.attribute_exp).loc);
                                quad_array->emit(x);
                            }
                        }
#line 1811 "y.tab.c"
    break;

  case 15: /* unary_expression: unary_operator O unary_expression  */
#line 397 "A5_19.y"
                                                           {
                            // cout<<"Testing * operator"<<endl;
                            switch((yyvsp[-2].attribute_unary)){
                                case U_ADDR :  
                                    if((yyvsp[0].attribute_exp).loc1 && ((yyvsp[0].attribute_exp).type->up) == INT_){
                                        if((yyvsp[0].attribute_exp).loc1 && (address_ind == 1)){
                                            (yyval.attribute_exp).loc = curr_table->gentemp2("INT*");
                                            date_types dt = INT_PTR;
                                            (yyval.attribute_exp).type = new_node(dt,-1);
                                            (yyval.attribute_exp).type->down = INT_PTR;
                                            char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                            char *arg2 = strdup((((yyvsp[0].attribute_exp).loc1)->name).c_str());
                                            char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,EQ_ADDR_BRACKET,(yyvsp[0].attribute_exp).loc,(yyvsp[0].attribute_exp).loc1,(yyval.attribute_exp).loc);
                                            quad_array->emit(x);
                                            address_ind = 0;
                                        }
                                        else{
                                            (yyval.attribute_exp).loc = curr_table->gentemp2("INT*");
                                            date_types dt = INT_PTR;
                                            (yyval.attribute_exp).type = new_node(dt,-1);
                                            (yyval.attribute_exp).type->down = INT_PTR;
                                            char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                            char *arg2 = strdup((((yyvsp[0].attribute_exp).loc1)->name).c_str());
                                            char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,ADDR_BRACKET_EQ,(yyvsp[0].attribute_exp).loc,(yyvsp[0].attribute_exp).loc1,(yyval.attribute_exp).loc);
                                            quad_array->emit(x);
                                            address_ind = 0;
                                        }
                                        // cout<<($2.loc)->name<<endl;
                                    }
                                    else if((yyvsp[0].attribute_exp).loc1 && (((yyvsp[0].attribute_exp).type->up) == CHAR_ || ((yyvsp[0].attribute_exp).type->down) == CHAR_)){
                                        if((yyvsp[0].attribute_exp).loc1 && (address_ind == 1)){
                                            (yyval.attribute_exp).loc = curr_table->gentemp2("CHAR*");
                                            date_types dt = CHAR_PTR;
                                            (yyval.attribute_exp).type = new_node(dt,-1);
                                            (yyval.attribute_exp).type->down = CHAR_PTR;
                                            char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                            char *arg2 = strdup((((yyvsp[0].attribute_exp).loc1)->name).c_str());
                                            char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,EQ_ADDR_BRACKET,(yyvsp[0].attribute_exp).loc,(yyvsp[0].attribute_exp).loc1,(yyval.attribute_exp).loc);
                                            quad_array->emit(x);
                                            address_ind = 0;
                                        }
                                        else{
                                            (yyval.attribute_exp).loc = curr_table->gentemp2("CHAR*");
                                            date_types dt = CHAR_PTR;
                                            (yyval.attribute_exp).type = new_node(dt,-1);
                                            (yyval.attribute_exp).type->down = CHAR_PTR;
                                            char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                            char *arg2 = strdup((((yyvsp[0].attribute_exp).loc1)->name).c_str());
                                            char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,ADDR_BRACKET_EQ,(yyvsp[0].attribute_exp).loc,(yyvsp[0].attribute_exp).loc1,(yyval.attribute_exp).loc);
                                            quad_array->emit(x);
                                            address_ind = 0;
                                        }
                                    }
                                    else if(((yyvsp[0].attribute_exp).type->down) == INT_){
                                        if((yyvsp[0].attribute_exp).loc1 && (address_ind == 1)){
                                            (yyval.attribute_exp).loc = curr_table->gentemp2("INT*");
                                            date_types dt = INT_PTR;
                                            (yyval.attribute_exp).type = new_node(dt,-1);
                                            (yyval.attribute_exp).type->down = INT_PTR;
                                            char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                            char *arg2 = strdup((((yyvsp[0].attribute_exp).loc1)->name).c_str());
                                            char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,EQ_ADDR_BRACKET,(yyvsp[0].attribute_exp).loc,(yyvsp[0].attribute_exp).loc1,(yyval.attribute_exp).loc);
                                            quad_array->emit(x);
                                            address_ind = 0;
                                        }
                                        else{
                                            (yyval.attribute_exp).loc = curr_table->gentemp2("INT*");
                                            date_types dt = INT_PTR;
                                            (yyval.attribute_exp).type = new_node(dt,-1);
                                            (yyval.attribute_exp).type->down = INT_PTR;
                                            char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                            char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                                            fields_quad x(arg1,0,res,(yyvsp[-2].attribute_unary),(yyvsp[0].attribute_exp).loc,0,(yyval.attribute_exp).loc);
                                            quad_array->emit(x);
                                            address_ind = 0;
                                        }
                                        // cout<<($2.loc)->name<<endl;
                                    }
                                    else if(((yyvsp[0].attribute_exp).type->down) == CHAR_){
                                        if((yyvsp[0].attribute_exp).loc1 && (address_ind == 1)){
                                            (yyval.attribute_exp).loc = curr_table->gentemp2("CHAR*");
                                            date_types dt = CHAR_PTR;
                                            (yyval.attribute_exp).type = new_node(dt,-1);
                                            (yyval.attribute_exp).type->down = CHAR_PTR;
                                            char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                            char *arg2 = strdup((((yyvsp[0].attribute_exp).loc1)->name).c_str());
                                            char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,EQ_ADDR_BRACKET,(yyvsp[0].attribute_exp).loc,(yyvsp[0].attribute_exp).loc1,(yyval.attribute_exp).loc);
                                            quad_array->emit(x);
                                            address_ind = 0;
                                        }
                                        else{
                                            (yyval.attribute_exp).loc = curr_table->gentemp2("CHAR*");
                                            date_types dt = CHAR_PTR;
                                            (yyval.attribute_exp).type = new_node(dt,-1);
                                            (yyval.attribute_exp).type->down = CHAR_PTR;
                                            char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                            char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                                            fields_quad x(arg1,0,res,(yyvsp[-2].attribute_unary),(yyvsp[0].attribute_exp).loc,0,(yyval.attribute_exp).loc);
                                            quad_array->emit(x);
                                            address_ind = 0;
                                        }
                                    }
                                    else{
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error70!"<<endl;
                                        yyerror(semantic);
                                    }
                                    break;
                                case U_STAR :  
                                    if(((yyvsp[0].attribute_exp).type->down == ARRAY) && ((yyvsp[0].attribute_exp).type->up == INT_PTR)){
                                        (yyval.attribute_exp) = (yyvsp[0].attribute_exp);
                                        (yyval.attribute_exp).pointer_ind = 1;
                                        date_types dt = INT_;
                                        (yyval.attribute_exp).type = new_node(dt,-1);
                                        (yyval.attribute_exp).type->down = INT_;
                                    }
                                    else if(((yyvsp[0].attribute_exp).type->down == ARRAY) && ((yyvsp[0].attribute_exp).type->up == CHAR_PTR)){
                                        (yyval.attribute_exp) = (yyvsp[0].attribute_exp);
                                        (yyval.attribute_exp).pointer_ind = 1;
                                        date_types dt = CHAR_;
                                        (yyval.attribute_exp).type = new_node(dt,-1);
                                        (yyval.attribute_exp).type->down = CHAR_;
                                    }
                                    else if(((yyvsp[0].attribute_exp).type->down) == INT_PTR){
                                        // $$.loc = curr_table->gentemp2("INT");
                                        // date_types dt = INT_;
                                        // $$.type = new_node(dt,-1);
                                        // $$.type->down = INT_;
                                        // char *arg1 = strdup((($2.loc)->name).c_str());
                                        // char *res = strdup((($$.loc)->name).c_str());
                                        // fields_quad x(arg1,0,res,$1,$2.loc,0,$$.loc);
                                        // quad_array->emit(x);
                                        (yyval.attribute_exp) = (yyvsp[0].attribute_exp);
                                        (yyval.attribute_exp).pointer_ind = 1;
                                        date_types dt = INT_;
                                        (yyval.attribute_exp).type = new_node(dt,-1);
                                        (yyval.attribute_exp).type->down = INT_;
                                    }
                                    else if(((yyvsp[0].attribute_exp).type->down) == CHAR_PTR){
                                        // $$.loc = curr_table->gentemp2("CHAR");
                                        // date_types dt = CHAR_;
                                        // $$.type = new_node(dt,-1);
                                        // $$.type->down = CHAR_;
                                        // char *arg1 = strdup((($2.loc)->name).c_str());
                                        // char *res = strdup((($$.loc)->name).c_str());
                                        // fields_quad x(arg1,0,res,$1,$2.loc,0,$$.loc);
                                        // quad_array->emit(x);
                                        (yyval.attribute_exp) = (yyvsp[0].attribute_exp);
                                        (yyval.attribute_exp).pointer_ind = 1;
                                        date_types dt = CHAR_;
                                        (yyval.attribute_exp).type = new_node(dt,-1);
                                        (yyval.attribute_exp).type->down = CHAR_;
                                    }
                                    else{
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error71!"<<endl;
                                        yyerror(semantic);
                                    }
                                    break;
                                default : 
                                    (yyval.attribute_exp).loc = curr_table->gentemp(((yyvsp[0].attribute_exp).type)->down);
                                    char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                    char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                                    fields_quad x(arg1,0,res,(yyvsp[-2].attribute_unary),(yyvsp[0].attribute_exp).loc,0,(yyval.attribute_exp).loc);
                                    quad_array->emit(x);
                                    (yyval.attribute_exp).type = (yyvsp[0].attribute_exp).type;
                            }
                        }
#line 1990 "y.tab.c"
    break;

  case 16: /* unary_operator: AND  */
#line 573 "A5_19.y"
                            { (yyval.attribute_unary) = U_ADDR; }
#line 1996 "y.tab.c"
    break;

  case 17: /* unary_operator: MULT  */
#line 574 "A5_19.y"
                               { (yyval.attribute_unary) = U_STAR; }
#line 2002 "y.tab.c"
    break;

  case 18: /* unary_operator: ADD  */
#line 575 "A5_19.y"
                              { (yyval.attribute_unary) = U_PLUS; }
#line 2008 "y.tab.c"
    break;

  case 19: /* unary_operator: SUB  */
#line 576 "A5_19.y"
                              { (yyval.attribute_unary) = U_MINUS; }
#line 2014 "y.tab.c"
    break;

  case 20: /* unary_operator: NOT  */
#line 577 "A5_19.y"
                              { (yyval.attribute_unary) = BW_U_NOT; }
#line 2020 "y.tab.c"
    break;

  case 21: /* multiplicative_expression: unary_expression  */
#line 580 "A5_19.y"
                                         {
                            if((yyvsp[0].attribute_exp).pointer_ind == 1 && (yyvsp[0].attribute_exp).loc1  && ((yyvsp[0].attribute_exp).type->down) == INT_){
                                symbol_table_record* y = curr_table->gentemp2("INT*");
                                
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *arg2 = strdup((((yyvsp[0].attribute_exp).loc1)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,arg2,res,STAR_EQ_BRACKET,(yyvsp[0].attribute_exp).loc,(yyvsp[0].attribute_exp).loc1,y);
                                quad_array->emit(x);

                                date_types dt = INT_;
                                (yyvsp[0].attribute_exp).type = new_node(dt,-1);
                                (yyvsp[0].attribute_exp).type->down = INT_;
                                (yyvsp[0].attribute_exp).loc = y;
                            }
                            else if((yyvsp[0].attribute_exp).pointer_ind == 1 && (yyvsp[0].attribute_exp).loc1  && ((yyvsp[0].attribute_exp).type->down) == CHAR_){
                                symbol_table_record* y = curr_table->gentemp2("CHAR*");
                                
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *arg2 = strdup((((yyvsp[0].attribute_exp).loc1)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,arg2,res,STAR_EQ_BRACKET,(yyvsp[0].attribute_exp).loc,(yyvsp[0].attribute_exp).loc1,y);
                                quad_array->emit(x);

                                date_types dt = CHAR_;
                                (yyvsp[0].attribute_exp).type = new_node(dt,-1);
                                (yyvsp[0].attribute_exp).type->down = CHAR_;
                                (yyvsp[0].attribute_exp).loc = y;
                            }
                            else if((yyvsp[0].attribute_exp).pointer_ind == 1 && ((yyvsp[0].attribute_exp).type->down) == INT_){
                                symbol_table_record* y = curr_table->gentemp2("INT*");
                                
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,0,res,U_STAR,(yyvsp[0].attribute_exp).loc,0,y);
                                quad_array->emit(x);

                                date_types dt = INT_;
                                (yyvsp[0].attribute_exp).type = new_node(dt,-1);
                                (yyvsp[0].attribute_exp).type->down = INT_;
                                (yyvsp[0].attribute_exp).loc = y;
                            }
                            else if((yyvsp[0].attribute_exp).pointer_ind == 1 && ((yyvsp[0].attribute_exp).type->down) == CHAR_){
                                symbol_table_record* y = curr_table->gentemp2("CHAR*");
                                
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,0,res,U_STAR,(yyvsp[0].attribute_exp).loc,0,y);
                                quad_array->emit(x);

                                date_types dt = CHAR_;
                                (yyvsp[0].attribute_exp).type = new_node(dt,-1);
                                (yyvsp[0].attribute_exp).type->down = CHAR_;
                                (yyvsp[0].attribute_exp).loc = y;
                            }
                            (yyval.attribute_exp) = (yyvsp[0].attribute_exp);
                        }
#line 2082 "y.tab.c"
    break;

  case 22: /* multiplicative_expression: multiplicative_expression MULT unary_expression  */
#line 637 "A5_19.y"
                                                                         {
                            if((yyvsp[0].attribute_exp).pointer_ind == 1 && (yyvsp[0].attribute_exp).loc1  && ((yyvsp[0].attribute_exp).type->down) == INT_){
                                symbol_table_record* y = curr_table->gentemp2("INT*");
                                
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *arg2 = strdup((((yyvsp[0].attribute_exp).loc1)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,arg2,res,STAR_EQ_BRACKET,(yyvsp[0].attribute_exp).loc,(yyvsp[0].attribute_exp).loc1,y);
                                quad_array->emit(x);

                                date_types dt = INT_;
                                (yyvsp[0].attribute_exp).type = new_node(dt,-1);
                                (yyvsp[0].attribute_exp).type->down = INT_;
                                (yyvsp[0].attribute_exp).loc = y;
                            }
                            else if((yyvsp[0].attribute_exp).pointer_ind == 1 && (yyvsp[0].attribute_exp).loc1  && ((yyvsp[0].attribute_exp).type->down) == CHAR_){
                                symbol_table_record* y = curr_table->gentemp2("CHAR*");
                                
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *arg2 = strdup((((yyvsp[0].attribute_exp).loc1)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,arg2,res,STAR_EQ_BRACKET,(yyvsp[0].attribute_exp).loc,(yyvsp[0].attribute_exp).loc1,y);
                                quad_array->emit(x);

                                date_types dt = CHAR_;
                                (yyvsp[0].attribute_exp).type = new_node(dt,-1);
                                (yyvsp[0].attribute_exp).type->down = CHAR_;
                                (yyvsp[0].attribute_exp).loc = y;
                            }
                            else if((yyvsp[0].attribute_exp).pointer_ind == 1 && ((yyvsp[0].attribute_exp).type->down) == INT_){
                                symbol_table_record* y = curr_table->gentemp2("INT*");
                                
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,0,res,U_STAR,(yyvsp[0].attribute_exp).loc,0,y);
                                quad_array->emit(x);

                                date_types dt = INT_;
                                (yyvsp[0].attribute_exp).type = new_node(dt,-1);
                                (yyvsp[0].attribute_exp).type->down = INT_;
                                (yyvsp[0].attribute_exp).loc = y;
                            }
                            else if((yyvsp[0].attribute_exp).pointer_ind == 1 && ((yyvsp[0].attribute_exp).type->down) == CHAR_){
                                symbol_table_record* y = curr_table->gentemp2("CHAR*");
                                
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,0,res,U_STAR,(yyvsp[0].attribute_exp).loc,0,y);
                                quad_array->emit(x);

                                date_types dt = CHAR_;
                                (yyvsp[0].attribute_exp).type = new_node(dt,-1);
                                (yyvsp[0].attribute_exp).type->down = CHAR_;
                                (yyvsp[0].attribute_exp).loc = y;
                            }
                            



                            if(typecheck((yyvsp[-2].attribute_exp).type, (yyvsp[0].attribute_exp).type)){
						  		(yyval.attribute_exp).loc = curr_table->gentemp(((yyvsp[-2].attribute_exp).type)->down);
						  		char *arg1 = strdup((((yyvsp[-2].attribute_exp).loc)->name).c_str());
						  		char *arg2 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
						  		char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
						  		fields_quad x(arg1,arg2,res,INTO,(yyvsp[-2].attribute_exp).loc,(yyvsp[0].attribute_exp).loc,(yyval.attribute_exp).loc);
						  		quad_array->emit(x);
						  		(yyval.attribute_exp).type = (yyvsp[-2].attribute_exp).type;
						  	}
                            else{
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error2!\n";
                                yyerror(semantic);
                            }
                        }
#line 2161 "y.tab.c"
    break;

  case 23: /* multiplicative_expression: multiplicative_expression DIVIDE unary_expression  */
#line 711 "A5_19.y"
                                                                           {

                            
                            if((yyvsp[0].attribute_exp).pointer_ind == 1 && (yyvsp[0].attribute_exp).loc1  && ((yyvsp[0].attribute_exp).type->down) == INT_){
                                symbol_table_record* y = curr_table->gentemp2("INT*");
                                
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *arg2 = strdup((((yyvsp[0].attribute_exp).loc1)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,arg2,res,STAR_EQ_BRACKET,(yyvsp[0].attribute_exp).loc,(yyvsp[0].attribute_exp).loc1,y);
                                quad_array->emit(x);

                                date_types dt = INT_;
                                (yyvsp[0].attribute_exp).type = new_node(dt,-1);
                                (yyvsp[0].attribute_exp).type->down = INT_;
                                (yyvsp[0].attribute_exp).loc = y;
                            }
                            else if((yyvsp[0].attribute_exp).pointer_ind == 1 && (yyvsp[0].attribute_exp).loc1  && ((yyvsp[0].attribute_exp).type->down) == CHAR_){
                                symbol_table_record* y = curr_table->gentemp2("CHAR*");
                                
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *arg2 = strdup((((yyvsp[0].attribute_exp).loc1)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,arg2,res,STAR_EQ_BRACKET,(yyvsp[0].attribute_exp).loc,(yyvsp[0].attribute_exp).loc1,y);
                                quad_array->emit(x);

                                date_types dt = CHAR_;
                                (yyvsp[0].attribute_exp).type = new_node(dt,-1);
                                (yyvsp[0].attribute_exp).type->down = CHAR_;
                                (yyvsp[0].attribute_exp).loc = y;
                            }
                            else if((yyvsp[0].attribute_exp).pointer_ind == 1 && ((yyvsp[0].attribute_exp).type->down) == INT_){
                                symbol_table_record* y = curr_table->gentemp2("INT*");
                                
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,0,res,U_STAR,(yyvsp[0].attribute_exp).loc,0,y);
                                quad_array->emit(x);

                                date_types dt = INT_;
                                (yyvsp[0].attribute_exp).type = new_node(dt,-1);
                                (yyvsp[0].attribute_exp).type->down = INT_;
                                (yyvsp[0].attribute_exp).loc = y;
                            }
                            else if((yyvsp[0].attribute_exp).pointer_ind == 1 && ((yyvsp[0].attribute_exp).type->down) == CHAR_){
                                symbol_table_record* y = curr_table->gentemp2("CHAR*");
                                
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,0,res,U_STAR,(yyvsp[0].attribute_exp).loc,0,y);
                                quad_array->emit(x);

                                date_types dt = CHAR_;
                                (yyvsp[0].attribute_exp).type = new_node(dt,-1);
                                (yyvsp[0].attribute_exp).type->down = CHAR_;
                                (yyvsp[0].attribute_exp).loc = y;
                            }

                            if(typecheck((yyvsp[-2].attribute_exp).type, (yyvsp[0].attribute_exp).type)){
						  		(yyval.attribute_exp).loc = curr_table->gentemp(((yyvsp[-2].attribute_exp).type)->down);
						  		char *arg1 = strdup((((yyvsp[-2].attribute_exp).loc)->name).c_str());
						  		char *arg2 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
						  		char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
						  		fields_quad x(arg1,arg2,res,DIV,(yyvsp[-2].attribute_exp).loc,(yyvsp[0].attribute_exp).loc,(yyval.attribute_exp).loc);
						  		quad_array->emit(x);
						  		(yyval.attribute_exp).type = (yyvsp[-2].attribute_exp).type;
						  	}
                            else{
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error3!\n";
                                yyerror(semantic);
                            }
                        }
#line 2239 "y.tab.c"
    break;

  case 24: /* multiplicative_expression: multiplicative_expression REMAINDER unary_expression  */
#line 784 "A5_19.y"
                                                                              {

                            if((yyvsp[0].attribute_exp).pointer_ind == 1 && (yyvsp[0].attribute_exp).loc1  && ((yyvsp[0].attribute_exp).type->down) == INT_){
                                symbol_table_record* y = curr_table->gentemp2("INT*");
                                
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *arg2 = strdup((((yyvsp[0].attribute_exp).loc1)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,arg2,res,STAR_EQ_BRACKET,(yyvsp[0].attribute_exp).loc,(yyvsp[0].attribute_exp).loc1,y);
                                quad_array->emit(x);

                                date_types dt = INT_;
                                (yyvsp[0].attribute_exp).type = new_node(dt,-1);
                                (yyvsp[0].attribute_exp).type->down = INT_;
                                (yyvsp[0].attribute_exp).loc = y;
                            }
                            else if((yyvsp[0].attribute_exp).pointer_ind == 1 && (yyvsp[0].attribute_exp).loc1  && ((yyvsp[0].attribute_exp).type->down) == CHAR_){
                                symbol_table_record* y = curr_table->gentemp2("CHAR*");
                                
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *arg2 = strdup((((yyvsp[0].attribute_exp).loc1)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,arg2,res,STAR_EQ_BRACKET,(yyvsp[0].attribute_exp).loc,(yyvsp[0].attribute_exp).loc1,y);
                                quad_array->emit(x);

                                date_types dt = CHAR_;
                                (yyvsp[0].attribute_exp).type = new_node(dt,-1);
                                (yyvsp[0].attribute_exp).type->down = CHAR_;
                                (yyvsp[0].attribute_exp).loc = y;
                            }
                            else if((yyvsp[0].attribute_exp).pointer_ind == 1 && ((yyvsp[0].attribute_exp).type->down) == INT_){
                                symbol_table_record* y = curr_table->gentemp2("INT*");
                                
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,0,res,U_STAR,(yyvsp[0].attribute_exp).loc,0,y);
                                quad_array->emit(x);

                                date_types dt = INT_;
                                (yyvsp[0].attribute_exp).type = new_node(dt,-1);
                                (yyvsp[0].attribute_exp).type->down = INT_;
                                (yyvsp[0].attribute_exp).loc = y;
                            }
                            else if((yyvsp[0].attribute_exp).pointer_ind == 1 && ((yyvsp[0].attribute_exp).type->down) == CHAR_){
                                symbol_table_record* y = curr_table->gentemp2("CHAR*");
                                
                                char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,0,res,U_STAR,(yyvsp[0].attribute_exp).loc,0,y);
                                quad_array->emit(x);

                                date_types dt = CHAR_;
                                (yyvsp[0].attribute_exp).type = new_node(dt,-1);
                                (yyvsp[0].attribute_exp).type->down = CHAR_;
                                (yyvsp[0].attribute_exp).loc = y;
                            }

                            if(typecheck((yyvsp[-2].attribute_exp).type, (yyvsp[0].attribute_exp).type)){
						  		(yyval.attribute_exp).loc = curr_table->gentemp(((yyvsp[-2].attribute_exp).type)->down);
						  		char *arg1 = strdup((((yyvsp[-2].attribute_exp).loc)->name).c_str());
						  		char *arg2 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
						  		char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
						  		fields_quad x(arg1,arg2,res,PERCENT,(yyvsp[-2].attribute_exp).loc,(yyvsp[0].attribute_exp).loc,(yyval.attribute_exp).loc);
						  		quad_array->emit(x);
						  		(yyval.attribute_exp).type = (yyvsp[-2].attribute_exp).type;
						  	}
                            else{
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error4!\n";
                                yyerror(semantic);
                            }
                        }
#line 2316 "y.tab.c"
    break;

  case 25: /* additive_expression: multiplicative_expression  */
#line 858 "A5_19.y"
                                                  {(yyval.attribute_exp) = (yyvsp[0].attribute_exp);}
#line 2322 "y.tab.c"
    break;

  case 26: /* additive_expression: additive_expression ADD multiplicative_expression  */
#line 859 "A5_19.y"
                                                                           {
                            if(typecheck((yyvsp[-2].attribute_exp).type, (yyvsp[0].attribute_exp).type)){
                                (yyval.attribute_exp).loc = curr_table->gentemp(((yyvsp[-2].attribute_exp).type)->down);
                                char *arg1 = strdup((((yyvsp[-2].attribute_exp).loc)->name).c_str());
                                char *arg2 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                                fields_quad x(arg1,arg2,res,PLUS,(yyvsp[-2].attribute_exp).loc,(yyvsp[0].attribute_exp).loc,(yyval.attribute_exp).loc);
                                quad_array->emit(x);
                                (yyval.attribute_exp).type = (yyvsp[-2].attribute_exp).type;
                            }
                            else{
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error5!\n";
                                yyerror(semantic);
                            }
                        }
#line 2343 "y.tab.c"
    break;

  case 27: /* additive_expression: additive_expression SUB multiplicative_expression  */
#line 875 "A5_19.y"
                                                                           {
                            if(typecheck((yyvsp[-2].attribute_exp).type, (yyvsp[0].attribute_exp).type)){
                                (yyval.attribute_exp).loc = curr_table->gentemp(((yyvsp[-2].attribute_exp).type)->down);
                                char *arg1 = strdup((((yyvsp[-2].attribute_exp).loc)->name).c_str());
                                char *arg2 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                                fields_quad x(arg1,arg2,res,MINUS,(yyvsp[-2].attribute_exp).loc,(yyvsp[0].attribute_exp).loc,(yyval.attribute_exp).loc);
                                quad_array->emit(x);
                                (yyval.attribute_exp).type = (yyvsp[-2].attribute_exp).type;
                            }
                            else{
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error6!\n";
                                yyerror(semantic);
                            }
                        }
#line 2364 "y.tab.c"
    break;

  case 28: /* relational_expression: additive_expression  */
#line 893 "A5_19.y"
                                            {(yyval.attribute_exp) = (yyvsp[0].attribute_exp);}
#line 2370 "y.tab.c"
    break;

  case 29: /* relational_expression: relational_expression LESS_THAN additive_expression  */
#line 894 "A5_19.y"
                                                                             {
                            (yyval.attribute_exp).TL = makelist(next_instr);
                            char *arg1 = strdup((((yyvsp[-2].attribute_exp).loc)->name).c_str());
                            char *arg2 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                            fields_quad x(arg1,arg2,0,goto_LT,(yyvsp[-2].attribute_exp).loc,(yyvsp[0].attribute_exp).loc,0);
                            quad_array->emit(x);
                            (yyval.attribute_exp).FL = makelist(next_instr);
                            fields_quad y(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(y);
                            (yyval.attribute_exp).type = new_node(BOOL_,-1);
                        }
#line 2386 "y.tab.c"
    break;

  case 30: /* relational_expression: relational_expression GREATER_THAN additive_expression  */
#line 905 "A5_19.y"
                                                                                {
                            (yyval.attribute_exp).TL = makelist(next_instr);
                            char *arg1 = strdup((((yyvsp[-2].attribute_exp).loc)->name).c_str());
                            char *arg2 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                            fields_quad x(arg1,arg2,0,goto_GT,(yyvsp[-2].attribute_exp).loc,(yyvsp[0].attribute_exp).loc,0);
                            quad_array->emit(x);
                            (yyval.attribute_exp).FL = makelist(next_instr);
                            fields_quad y(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(y);
                            (yyval.attribute_exp).type = new_node(BOOL_,-1);
                        }
#line 2402 "y.tab.c"
    break;

  case 31: /* relational_expression: relational_expression LESS_THAN_OR_EQUAL additive_expression  */
#line 916 "A5_19.y"
                                                                                      {
                            (yyval.attribute_exp).TL = makelist(next_instr);
                            char *arg1 = strdup((((yyvsp[-2].attribute_exp).loc)->name).c_str());
                            char *arg2 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                            fields_quad x(arg1,arg2,0,goto_LTE,(yyvsp[-2].attribute_exp).loc,(yyvsp[0].attribute_exp).loc,0);
                            quad_array->emit(x);
                            (yyval.attribute_exp).FL = makelist(next_instr);
                            fields_quad y(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(y);
                            (yyval.attribute_exp).type = new_node(BOOL_,-1);
                        }
#line 2418 "y.tab.c"
    break;

  case 32: /* relational_expression: relational_expression GREATER_THAN_OR_EQUAL additive_expression  */
#line 927 "A5_19.y"
                                                                                         {
                            (yyval.attribute_exp).TL = makelist(next_instr);
                            char *arg1 = strdup((((yyvsp[-2].attribute_exp).loc)->name).c_str());
                            char *arg2 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                            fields_quad x(arg1,arg2,0,goto_GTE,(yyvsp[-2].attribute_exp).loc,(yyvsp[0].attribute_exp).loc,0);
                            quad_array->emit(x);
                            (yyval.attribute_exp).FL = makelist(next_instr);
                            fields_quad y(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(y);
                            (yyval.attribute_exp).type = new_node(BOOL_,-1);
                        }
#line 2434 "y.tab.c"
    break;

  case 33: /* equality_expression: relational_expression  */
#line 940 "A5_19.y"
                                              {(yyval.attribute_exp) = (yyvsp[0].attribute_exp);}
#line 2440 "y.tab.c"
    break;

  case 34: /* equality_expression: equality_expression EQUAL_TO relational_expression  */
#line 941 "A5_19.y"
                                                                            {
                            (yyval.attribute_exp).TL = makelist(next_instr);
                            char* arg1 = strdup((((yyvsp[-2].attribute_exp).loc)->name).c_str());
                            char* arg2 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                            fields_quad x(arg1,arg2,0,goto_EQ,(yyvsp[-2].attribute_exp).loc,(yyvsp[0].attribute_exp).loc,0);
                            quad_array->emit(x);
                            (yyval.attribute_exp).FL = makelist(next_instr);
                            fields_quad y(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(y);
                            (yyval.attribute_exp).type = new_node(BOOL_,-1);
                        }
#line 2456 "y.tab.c"
    break;

  case 35: /* equality_expression: equality_expression NOT_EQUAL_TO relational_expression  */
#line 952 "A5_19.y"
                                                                                {
                            (yyval.attribute_exp).TL = makelist(next_instr);
                            char* arg1 = strdup((((yyvsp[-2].attribute_exp).loc)->name).c_str());
                            char* arg2 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                            fields_quad x(arg1,arg2,0,goto_NEQ,(yyvsp[-2].attribute_exp).loc,(yyvsp[0].attribute_exp).loc,0);
                            quad_array->emit(x);
                            (yyval.attribute_exp).FL = makelist(next_instr);
                            fields_quad y(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(y);
                            (yyval.attribute_exp).type = new_node(BOOL_,-1);
                        }
#line 2472 "y.tab.c"
    break;

  case 36: /* logical_AND_expression: equality_expression  */
#line 965 "A5_19.y"
                                            {(yyval.attribute_exp) = (yyvsp[0].attribute_exp);}
#line 2478 "y.tab.c"
    break;

  case 37: /* logical_AND_expression: logical_AND_expression LOGICAL_AND M equality_expression  */
#line 966 "A5_19.y"
                                                                                  {
                            backpatch((yyvsp[-3].attribute_exp).TL,(yyvsp[-1].instr));
                            (yyval.attribute_exp).FL = merge((yyvsp[-3].attribute_exp).FL,(yyvsp[0].attribute_exp).FL);
                            (yyval.attribute_exp).TL = (yyvsp[0].attribute_exp).TL;
                            (yyval.attribute_exp).type = new_node(BOOL_,-1);
                        }
#line 2489 "y.tab.c"
    break;

  case 38: /* logical_OR_expression: logical_AND_expression  */
#line 974 "A5_19.y"
                                               {(yyval.attribute_exp) = (yyvsp[0].attribute_exp);}
#line 2495 "y.tab.c"
    break;

  case 39: /* logical_OR_expression: logical_OR_expression LOGICAL_OR M logical_AND_expression  */
#line 975 "A5_19.y"
                                                                                   {
                            backpatch((yyvsp[-3].attribute_exp).FL,(yyvsp[-1].instr));
                            (yyval.attribute_exp).TL = merge((yyvsp[-3].attribute_exp).TL,(yyvsp[0].attribute_exp).TL);
                            (yyval.attribute_exp).FL = (yyvsp[0].attribute_exp).FL;
                            (yyval.attribute_exp).type = new_node(BOOL_,-1);         
                        }
#line 2506 "y.tab.c"
    break;

  case 40: /* conditional_expression: logical_OR_expression  */
#line 983 "A5_19.y"
                                              {(yyval.attribute_exp) = (yyvsp[0].attribute_exp);}
#line 2512 "y.tab.c"
    break;

  case 41: /* conditional_expression: logical_OR_expression N QUESTION_MARK M expression N COLON M conditional_expression  */
#line 984 "A5_19.y"
                                                                                                              {
                            (yyval.attribute_exp).loc = curr_table->gentemp(((yyvsp[-4].attribute_exp).type)->down);
                            (yyval.attribute_exp).type = (yyvsp[-4].attribute_exp).type;
                            char *res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                            char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                            fields_quad x(arg1,0,res,ASSIGN,(yyvsp[0].attribute_exp).loc,0,(yyval.attribute_exp).loc);
                            quad_array->emit(x);
                            lnode *l = makelist(next_instr);
                            fields_quad y(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(y);
                            backpatch((yyvsp[-3].N_attr),next_instr);
                            res = strdup((((yyval.attribute_exp).loc)->name).c_str());
                            arg1 = strdup((((yyvsp[-4].attribute_exp).loc)->name).c_str());
                            fields_quad z(arg1,0,res,ASSIGN,(yyvsp[-4].attribute_exp).loc,0,(yyval.attribute_exp).loc);
                            quad_array->emit(z);
                            l = merge(l,makelist(next_instr));
                            fields_quad a(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(a);
                            backpatch((yyvsp[-7].N_attr),next_instr);
                            conv2Bool(&(yyvsp[-8].attribute_exp));
                            backpatch((yyvsp[-8].attribute_exp).TL,(yyvsp[-5].instr));
                            backpatch((yyvsp[-8].attribute_exp).FL,(yyvsp[-1].instr));
                            backpatch(l,next_instr);
                        }
#line 2541 "y.tab.c"
    break;

  case 42: /* assignment_expression: conditional_expression  */
#line 1010 "A5_19.y"
                                               {(yyval.attribute_exp) = (yyvsp[0].attribute_exp);}
#line 2547 "y.tab.c"
    break;

  case 43: /* assignment_expression: unary_expression EQUAL assignment_expression  */
#line 1011 "A5_19.y"
                                                                      {

                            if((yyvsp[-2].attribute_exp).pointer_ind == 1){
                                if(typecheck((yyvsp[-2].attribute_exp).type, (yyvsp[0].attribute_exp).type)){
                                    if((yyvsp[-2].attribute_exp).loc1){
                                        //printf("%s\n",($1.loc)->name);
                                        // cout<<"First case"<<endl;

                                        symbol_table_record* y;

                                        if(((yyvsp[-2].attribute_exp).type->down) == INT_){
                                            // cout<<"Integer pointer"<<endl;
                                            // y = curr_table->gentemp2("INT*");
                                
                                            char *arg1 = strdup((((yyvsp[-2].attribute_exp).array)->name).c_str());
                                            char *arg2 = strdup((((yyvsp[-2].attribute_exp).loc1)->name).c_str());
                                            char *res = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,STAR_BRACKET_EQ,(yyvsp[-2].attribute_exp).loc,(yyvsp[-2].attribute_exp).loc1,(yyvsp[0].attribute_exp).loc);
                                            quad_array->emit(x);

                                        }
                                        else if(((yyvsp[-2].attribute_exp).type->down) == CHAR_){
                                            // cout<<"Character pointer"<<endl;
                                            // y = curr_table->gentemp2("CHAR*");
                                
                                            char *arg1 = strdup((((yyvsp[-2].attribute_exp).array)->name).c_str());
                                            char *arg2 = strdup((((yyvsp[-2].attribute_exp).loc1)->name).c_str());
                                            char *res = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,STAR_BRACKET_EQ,(yyvsp[-2].attribute_exp).loc,(yyvsp[-2].attribute_exp).loc1,(yyvsp[0].attribute_exp).loc);
                                            quad_array->emit(x);

                                        }



                                        
                                        // char *arg1 = strdup((($3.loc)->name).c_str());
                                        // // char *arg2 = strdup((($1.loc1)->name).c_str());
                                        // char *res = strdup((y->name).c_str());
                                        // fields_quad x(arg1,0,res,ASSIGN,y,0,$3.loc);
                                        // quad_array->emit(x);
                                    }
                                    else{
                                        // cout<<"Second case"<<endl;
                                        char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                        char *res = strdup((((yyvsp[-2].attribute_exp).loc)->name).c_str());
                                        fields_quad x(arg1,0,res,STAR_EQUAL,(yyvsp[0].attribute_exp).loc,0,(yyvsp[-2].attribute_exp).loc);
                                        quad_array->emit(x);
                                    }
                                }
                                else{
                                    char semantic[20]="Semantic Error!\n";
                                    if((yyvsp[-2].attribute_exp).type == nullptr) cout<<"Testing 1"<<endl;
                                    if((yyvsp[0].attribute_exp).type == nullptr) cout<<"Testing 3"<<endl;
                                    switch(((yyvsp[-2].attribute_exp).type)->down){
                                        case INT_ : cout<<"INT"<<endl; break;
                                        default : cout<<"Testing 1"<<endl;
                                    }
                                    switch(((yyvsp[0].attribute_exp).type)->down){
                                        case INT_ : cout<<"INT"<<endl; break;
                                        default : cout<<"Testing 2"<<endl;
                                    }
                                    curr_table->print();
                                    cout<<"Semantic Error47!\n";
                                    yyerror(semantic);
                                }
                            }
                            else{

                                if((yyvsp[-2].attribute_exp).loc1){
                                   if((yyvsp[-2].attribute_exp).type->up == (yyvsp[0].attribute_exp).type->down){
                                        if((yyvsp[-2].attribute_exp).loc1){
                                            //printf("%s\n",($1.loc)->name);
                                            // cout<<"First case"<<endl;
                                            char *arg1 = strdup((((yyvsp[-2].attribute_exp).array)->name).c_str());
                                            char *arg2 = strdup((((yyvsp[-2].attribute_exp).loc1)->name).c_str());
                                            char *res = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,BRACKET_EQ,(yyvsp[-2].attribute_exp).loc,(yyvsp[-2].attribute_exp).loc1,(yyvsp[0].attribute_exp).loc);
                                            quad_array->emit(x);
                                        }
                                        else{
                                            // cout<<"Second case"<<endl;
                                            char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                            char *res = strdup((((yyvsp[-2].attribute_exp).loc)->name).c_str());
                                            fields_quad x(arg1,0,res,ASSIGN,(yyvsp[0].attribute_exp).loc,0,(yyvsp[-2].attribute_exp).loc);
                                            quad_array->emit(x);
                                        }
                                    } 
                                }
                                else if(typecheck((yyvsp[-2].attribute_exp).type, (yyvsp[0].attribute_exp).type)){
                                    if((yyvsp[-2].attribute_exp).loc1){
                                        //printf("%s\n",($1.loc)->name);
                                        // cout<<"First case"<<endl;
                                        char *arg1 = strdup((((yyvsp[-2].attribute_exp).array)->name).c_str());
                                        char *arg2 = strdup((((yyvsp[-2].attribute_exp).loc1)->name).c_str());
                                        char *res = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                        fields_quad x(arg1,arg2,res,BRACKET_EQ,(yyvsp[-2].attribute_exp).loc,(yyvsp[-2].attribute_exp).loc1,(yyvsp[0].attribute_exp).loc);
                                        quad_array->emit(x);
                                    }
                                    else{
                                        // cout<<"Second case"<<endl;
                                        char *arg1 = strdup((((yyvsp[0].attribute_exp).loc)->name).c_str());
                                        char *res = strdup((((yyvsp[-2].attribute_exp).loc)->name).c_str());
                                        fields_quad x(arg1,0,res,ASSIGN,(yyvsp[0].attribute_exp).loc,0,(yyvsp[-2].attribute_exp).loc);
                                        quad_array->emit(x);
                                    }
                                }
                                else{
                                    char semantic[20]="Semantic Error!\n";
                                    // if($1.type == nullptr) cout<<"Testing 1"<<endl;
                                    // if($3.type == nullptr) cout<<"Testing 3"<<endl;
                                    switch(((yyvsp[-2].attribute_exp).type)->down){
                                        case INT_ : cout<<"INT"<<endl; break;  
		                                case CHAR_ : cout<<"CHAR"<<endl; break;
		                                case INT_PTR : cout<<"INT*"<<endl; break;
		                                case CHAR_PTR : cout<<"CHAR*"<<endl; break;
		                                case PTR : cout<<"VOID*"<<endl; break;
                                        default : cout<<"Testing 1"<<endl;
                                    }
                                    switch(((yyvsp[0].attribute_exp).type)->down){
                                        case INT_ : cout<<"INT"<<endl; break;
                                        default : cout<<"Testing 2"<<endl;
                                    }
                                    global_table->print();
                                    cout<<"Semantic Error7!\n";
                                    yyerror(semantic);
                                }
                            }
                        }
#line 2681 "y.tab.c"
    break;

  case 44: /* expression: assignment_expression  */
#line 1142 "A5_19.y"
                                              {(yyval.attribute_exp) = (yyvsp[0].attribute_exp);}
#line 2687 "y.tab.c"
    break;

  case 45: /* internal_declaration: non_void_type_specifier declarator  */
#line 1148 "A5_19.y"
                                                          {
                            (yyval.datatype) = new data_type();
                            if(((yyvsp[0].datatype)->pointer_indicator)==1) (yyval.datatype)->type = ((yyvsp[-1].datatype)->type+"*");
                            else (yyval.datatype)->type = (yyvsp[-1].datatype)->type;
                            (yyval.datatype)->name = (yyvsp[0].datatype)->name;
                            (yyval.datatype)->array_ind = (yyvsp[0].datatype)->array_ind;
                            if((yyvsp[0].datatype)->size==0){
                                if((yyvsp[0].datatype)->pointer_indicator==1){
                                    (yyval.datatype)->size = 4;
                                }
                                else{
                                    (yyval.datatype)->size = ((yyvsp[-1].datatype)->size);
                                }
                            }
                            else{
                                if((yyvsp[0].datatype)->pointer_indicator==1){
                                    (yyval.datatype)->size = 4*((yyvsp[0].datatype)->size);
                                }
                                else{
                                    (yyval.datatype)->size = ((yyvsp[-1].datatype)->size)*((yyvsp[0].datatype)->size);
                                }
                            }
                            (yyval.datatype)->value = (yyvsp[0].datatype)->value;
                            if(((yyvsp[0].datatype)->type).size()!=0 && ((yyvsp[0].datatype)->type).compare((yyval.datatype)->type)!=0){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error8!\n";
                                yyerror(semantic);
                            }

                            int curr_offset = 0;
                            if(curr_table->curr_size != 0) curr_offset = (curr_table->list[curr_table->curr_size-1]).offset;
                            symbol_table_record* x = new symbol_table_record();
                            x->name = (yyval.datatype)->name;
                            x->type.push_back((yyval.datatype)->type);
                            // x->initial_value = $$->value;
                            x->size = (yyval.datatype)->size;
                            x->offset = curr_offset+(yyval.datatype)->size;
                            x->array_ind = (yyval.datatype)->array_ind;
                            curr_table->insert(x);
                        }
#line 2732 "y.tab.c"
    break;

  case 46: /* internal_declaration: VOID pointer direct_declarator  */
#line 1188 "A5_19.y"
                                                        {
                            (yyval.datatype) = new data_type();
                            (yyval.datatype)->type = "VOID*";
                            (yyval.datatype)->name = (yyvsp[0].datatype)->name;
                            (yyval.datatype)->array_ind = (yyvsp[0].datatype)->array_ind;
                            if((yyvsp[0].datatype)->size==0) (yyval.datatype)->size = 4;
                            else (yyval.datatype)->size = 4*((yyvsp[0].datatype)->size);
                            (yyval.datatype)->value = (yyvsp[0].datatype)->value;
                            if(((yyvsp[0].datatype)->type).size()!=0 && ((yyvsp[0].datatype)->type).compare("VOID*")!=0){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error9!\n";
                                yyerror(semantic);
                            }

                            int curr_offset = 0;
                            if(curr_table->curr_size != 0) curr_offset = (curr_table->list[curr_table->curr_size-1]).offset;
                            symbol_table_record* x = new symbol_table_record();
                            x->name = (yyval.datatype)->name;
                            x->type.push_back((yyval.datatype)->type);
                            x->initial_value = (yyval.datatype)->value;
                            x->size = (yyval.datatype)->size;
                            x->offset = curr_offset+(yyval.datatype)->size;
                            x->array_ind = (yyval.datatype)->array_ind;
                            curr_table->insert(x);
                        }
#line 2762 "y.tab.c"
    break;

  case 47: /* direct_declarator: IDENTIFIER OPEN_SQUARE_BRACKET INTEGER_CONSTANT CLOSE_SQUARE_BRACKET SEMI_COLON  */
#line 1216 "A5_19.y"
                                                                                                        {
                            if(curr_table->lookup((yyvsp[-4].datatype)->name) != nullptr){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic error 48"<<endl;
                                yyerror(semantic);
                            }
                            (yyval.datatype) = new data_type();
                            (yyval.datatype)->name = (yyvsp[-4].datatype)->name;
                            (yyval.datatype)->size = (yyvsp[-2].intval); 
                            (yyval.datatype)->array_ind = 1;
                        }
#line 2778 "y.tab.c"
    break;

  case 48: /* direct_declarator: IDENTIFIER SEMI_COLON  */
#line 1227 "A5_19.y"
                                               {
                            if(curr_table->lookup((yyvsp[-1].datatype)->name) != nullptr){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic error 49"<<endl;
                                yyerror(semantic);
                            }
                            (yyval.datatype) = new data_type();
                            (yyval.datatype)->name = (yyvsp[-1].datatype)->name;
                        }
#line 2792 "y.tab.c"
    break;

  case 49: /* direct_declarator: IDENTIFIER EQUAL initializer SEMI_COLON  */
#line 1236 "A5_19.y"
                                                                  {
                            if(curr_table->lookup((yyvsp[-3].datatype)->name) != nullptr){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic error 50"<<endl;
                                yyerror(semantic);
                            }
                            // cout<<"Testing direct declarator"<<endl;
                            (yyval.datatype) = new data_type();
                            (yyval.datatype)->name = (yyvsp[-3].datatype)->name;
                            (yyval.datatype)->type = (yyvsp[-1].datatype)->type;
                            // $$->value = $3->value;
                            // cout<<"Testing"<<endl;
                            char *arg1 = strdup(((yyvsp[-1].datatype)->name).c_str());
                            char *res = strdup(((yyvsp[-3].datatype)->name).c_str());
                            fields_quad x(arg1,0,res,ASSIGN,(yyvsp[-1].datatype)->loc,0,(yyvsp[-3].datatype)->loc);
                            quad_array->emit(x);
                            // cout<<"Testing"<<endl;
                        }
#line 2815 "y.tab.c"
    break;

  case 50: /* non_void_type_specifier: CHAR  */
#line 1257 "A5_19.y"
                             {
                            (yyval.datatype) = new data_type();
                            (yyval.datatype)->type="CHAR";
                            (yyval.datatype)->size=1;
                            }
#line 2825 "y.tab.c"
    break;

  case 51: /* non_void_type_specifier: INT  */
#line 1262 "A5_19.y"
                             {
                            (yyval.datatype) = new data_type();
                            (yyval.datatype)->type="INT";
                            (yyval.datatype)->size=4;
                            }
#line 2835 "y.tab.c"
    break;

  case 52: /* declarator: direct_declarator  */
#line 1268 "A5_19.y"
                                         {
                            (yyval.datatype) = new data_type();
                            (yyval.datatype)->name = (yyvsp[0].datatype)->name;
                            (yyval.datatype)->size = (yyvsp[0].datatype)->size;
                            // $$->value = $1->value;
                            (yyval.datatype)->array_ind = (yyvsp[0].datatype)->array_ind;
                        }
#line 2847 "y.tab.c"
    break;

  case 53: /* declarator: pointer direct_declarator  */
#line 1275 "A5_19.y"
                                                   {
                            (yyval.datatype) = new data_type();
                            (yyval.datatype)->name = (yyvsp[0].datatype)->name;
                            (yyval.datatype)->size = (yyvsp[0].datatype)->size;
                            (yyval.datatype)->pointer_indicator = 1;
                            // $$->value = $2->value;
                            (yyval.datatype)->array_ind = (yyvsp[0].datatype)->array_ind;
                        }
#line 2860 "y.tab.c"
    break;

  case 54: /* pointer: MULT  */
#line 1286 "A5_19.y"
                            {
                            (yyval.datatype) = new data_type();
                            (yyval.datatype)->type="*";
                        }
#line 2869 "y.tab.c"
    break;

  case 55: /* parameter_list2: parameter_declaration2  */
#line 1292 "A5_19.y"
                                              {
                            (yyval.parametertype) = new parameter_type();
                            ((yyval.parametertype)->parameters).push_back((yyvsp[0].datatype)->type);
                            ((yyval.parametertype)->names).push_back((yyvsp[0].datatype)->name);
                        }
#line 2879 "y.tab.c"
    break;

  case 56: /* parameter_list2: parameter_declaration2 COMMA parameter_list2  */
#line 1297 "A5_19.y"
                                                                      {
                            (yyval.parametertype) = new parameter_type();
                            ((yyval.parametertype)->parameters).push_back((yyvsp[-2].datatype)->type);
                            ((yyval.parametertype)->names).push_back((yyvsp[-2].datatype)->name);
                            for(int i=0;i<((yyvsp[0].parametertype)->parameters).size();i++){
                                ((yyval.parametertype)->parameters).push_back(((yyvsp[0].parametertype)->parameters)[i]);
                                ((yyval.parametertype)->names).push_back(((yyvsp[0].parametertype)->names)[i]);
                            }
                        }
#line 2893 "y.tab.c"
    break;

  case 57: /* parameter_declaration2: INT IDENTIFIER  */
#line 1309 "A5_19.y"
                                      {
                            (yyval.datatype) = new data_type();
                            (yyval.datatype)->name = (yyvsp[0].datatype)->name;
                            (yyval.datatype)->type="INT";
                        }
#line 2903 "y.tab.c"
    break;

  case 58: /* parameter_declaration2: CHAR IDENTIFIER  */
#line 1314 "A5_19.y"
                                         {
                            (yyval.datatype) = new data_type();
                            (yyval.datatype)->name = (yyvsp[0].datatype)->name;
                            (yyval.datatype)->type="CHAR";
                        }
#line 2913 "y.tab.c"
    break;

  case 59: /* parameter_declaration2: non_void_type_specifier pointer IDENTIFIER  */
#line 1319 "A5_19.y"
                                                                    {
                            (yyval.datatype) = new data_type();
                            (yyval.datatype)->name = (yyvsp[0].datatype)->name;
                            (yyval.datatype)->type=((yyvsp[-2].datatype)->type+"*");
                        }
#line 2923 "y.tab.c"
    break;

  case 60: /* parameter_declaration2: VOID pointer IDENTIFIER  */
#line 1324 "A5_19.y"
                                                  {
                            (yyval.datatype) = new data_type();
                            (yyval.datatype)->name = (yyvsp[0].datatype)->name;
                            (yyval.datatype)->type = "VOID*";
                        }
#line 2933 "y.tab.c"
    break;

  case 61: /* initializer: assignment_expression  */
#line 1331 "A5_19.y"
                                              {
                            // cout<<"Testing initializer"<<endl;
                            (yyval.datatype) = new data_type();
                            (yyval.datatype)->loc = (yyvsp[0].attribute_exp).loc;
                            (yyval.datatype)->name = (yyvsp[0].attribute_exp).loc->name;
                            switch((yyvsp[0].attribute_exp).type->down){
                                case INT_ : (yyval.datatype)->type = "INT";
                                            break;
                                case CHAR_ : (yyval.datatype)->type = "CHAR";
                                            break;
                                case INT_PTR : (yyval.datatype)->type = "INT*";
                                            break;
                                case CHAR_PTR : (yyval.datatype)->type = "CHAR*";
                                            break;
                                case PTR : (yyval.datatype)->type = "VOID*";
                                            break;
                                default :
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic error 40"<<endl;
                                    yyerror(semantic);
                            }
                            
                            // if($1.ind==1){
                            //     $$->type = "INT";
                            //     int x = $1.val.int_data;
                            //     // cout<<x<<endl;
                            //     $$->value = to_string(x) ;
                            // }
                            // else if($1.ind==2) {
                            //     $$->type = "CHAR";
                            //     char c = $1.val.char_data;
                            //     ($$->value).push_back(c);
                            // }
                            // else if($1.type->down == INT_)

                            // cout<<"Testing"<<endl;
                        }
#line 2975 "y.tab.c"
    break;

  case 62: /* statement: compound_statement  */
#line 1375 "A5_19.y"
                                           { (yyval.attribute_exp) = (yyvsp[0].attribute_exp); }
#line 2981 "y.tab.c"
    break;

  case 63: /* statement: expression_statement  */
#line 1376 "A5_19.y"
                                               { (yyval.attribute_exp) = (yyvsp[0].attribute_exp); }
#line 2987 "y.tab.c"
    break;

  case 64: /* statement: selection_statement  */
#line 1377 "A5_19.y"
                                              { (yyval.attribute_exp) = (yyvsp[0].attribute_exp); }
#line 2993 "y.tab.c"
    break;

  case 65: /* statement: iteration_statement  */
#line 1378 "A5_19.y"
                                              { (yyval.attribute_exp) = (yyvsp[0].attribute_exp); }
#line 2999 "y.tab.c"
    break;

  case 66: /* statement: jump_statement  */
#line 1379 "A5_19.y"
                                         { (yyval.attribute_exp) = (yyvsp[0].attribute_exp); }
#line 3005 "y.tab.c"
    break;

  case 67: /* compound_statement: OPEN_FLOWER_BRACKET CLOSE_FLOWER_BRACKET  */
#line 1382 "A5_19.y"
                                                                 {}
#line 3011 "y.tab.c"
    break;

  case 68: /* compound_statement: OPEN_FLOWER_BRACKET block_item_list CLOSE_FLOWER_BRACKET  */
#line 1383 "A5_19.y"
                                                                                  { (yyval.attribute_exp) = (yyvsp[-1].attribute_exp); }
#line 3017 "y.tab.c"
    break;

  case 69: /* block_item_list: block_item  */
#line 1386 "A5_19.y"
                                  {
                            (yyval.attribute_exp) = (yyvsp[0].attribute_exp);
                        }
#line 3025 "y.tab.c"
    break;

  case 70: /* block_item_list: block_item_list M block_item  */
#line 1389 "A5_19.y"
                                                      {
                            backpatch((yyvsp[-2].attribute_exp).NL,(yyvsp[-1].instr));
                            (yyval.attribute_exp) = (yyvsp[0].attribute_exp);
                        }
#line 3034 "y.tab.c"
    break;

  case 71: /* block_item: internal_declaration  */
#line 1395 "A5_19.y"
                                            {
                            // global_table->print();
                        }
#line 3042 "y.tab.c"
    break;

  case 72: /* block_item: statement  */
#line 1398 "A5_19.y"
                                    {
                            (yyval.attribute_exp) = (yyvsp[0].attribute_exp);
                        }
#line 3050 "y.tab.c"
    break;

  case 73: /* expression_statement: SEMI_COLON  */
#line 1403 "A5_19.y"
                                   {}
#line 3056 "y.tab.c"
    break;

  case 74: /* expression_statement: expression SEMI_COLON  */
#line 1404 "A5_19.y"
                                                {
                            (yyval.attribute_exp) = (yyvsp[-1].attribute_exp);
                        }
#line 3064 "y.tab.c"
    break;

  case 75: /* selection_statement: IF OPEN_BRACKET expression N CLOSE_BRACKET M statement N ELSE M statement  */
#line 1409 "A5_19.y"
                                                                                                  {
                            lnode *l = 0;
                            if(((yyvsp[-8].attribute_exp).type)->down!=BOOL_){
                                l = makelist(next_instr);
                                fields_quad x(0,0,0,GOTO_,0,0,0);
                                quad_array->emit(x);
                            }
                            backpatch((yyvsp[-7].N_attr),next_instr);
                            conv2Bool(&(yyvsp[-8].attribute_exp));
                            backpatch((yyvsp[-8].attribute_exp).TL,(yyvsp[-5].instr));
                            backpatch((yyvsp[-8].attribute_exp).FL,(yyvsp[-1].instr));
                            lnode *temp = merge((yyvsp[-3].N_attr),(yyvsp[-4].attribute_exp).NL);
                            (yyval.attribute_exp).NL = merge(temp,(yyvsp[0].attribute_exp).NL);
                            (yyval.attribute_exp).NL = merge((yyval.attribute_exp).NL,l);
                        }
#line 3084 "y.tab.c"
    break;

  case 76: /* selection_statement: IF OPEN_BRACKET expression N CLOSE_BRACKET M statement N  */
#line 1424 "A5_19.y"
                                                                                  {
                            backpatch((yyvsp[-4].N_attr),next_instr);
                            conv2Bool(&(yyvsp[-5].attribute_exp));
                            backpatch((yyvsp[-5].attribute_exp).TL,(yyvsp[-2].instr));
                            (yyval.attribute_exp).NL = merge((yyvsp[-1].attribute_exp).NL,(yyvsp[-5].attribute_exp).FL);
                        }
#line 3095 "y.tab.c"
    break;

  case 77: /* iteration_statement: FOR OPEN_BRACKET expression_statement M expression_statement N M expression N CLOSE_BRACKET M statement  */
#line 1432 "A5_19.y"
                                                                                                                               {
                            // cout<<"Testing..."<<endl;
                            // M:
                            //     {
                            //         $$ = next_instr;
                            //     }
                            //     ;

                            // N:
                            //     {
                            //         $$ = makelist(next_instr);
                            //         fields_quad x(0,0,0,GOTO_,0,0,0);
                            //         quad_array->emit(x);
                            //     }
                            //     ;
                            backpatch((yyvsp[-3].N_attr),(yyvsp[-8].instr));
                            lnode *l = makelist(next_instr);
                            fields_quad x(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(x);
                            (yyvsp[0].attribute_exp).NL = merge((yyvsp[0].attribute_exp).NL,l);
                            backpatch((yyvsp[0].attribute_exp).NL,(yyvsp[-5].instr));
                            backpatch((yyvsp[-6].N_attr),next_instr);
                            backpatch((yyvsp[-7].attribute_exp).FL,next_instr);
                            conv2Bool(&(yyvsp[-7].attribute_exp));
                            backpatch((yyvsp[-7].attribute_exp).TL,(yyvsp[-1].instr));
                            (yyval.attribute_exp).NL = (yyvsp[-7].attribute_exp).FL;
                        }
#line 3127 "y.tab.c"
    break;

  case 78: /* jump_statement: RETURN SEMI_COLON  */
#line 1461 "A5_19.y"
                                         {
                            string name = curr_table->name;
                            symbol_table_record *y = global_table->lookup(name);
                            if(y == nullptr){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic error 41"<<endl;
                                yyerror(semantic);
                            }
                            if((y->type[(y->type).size()-1]).compare("VOID") != 0 ){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error 42"<<endl;
                                yyerror(semantic);
                            }
                            fields_quad x(0,0,0,RETURN_,0,0,0);
                            quad_array->emit(x);
                            curr_table->return_ind = 1;
                        }
#line 3149 "y.tab.c"
    break;

  case 79: /* jump_statement: RETURN expression SEMI_COLON  */
#line 1478 "A5_19.y"
                                                      {
                            string name = curr_table->name;
                            symbol_table_record *y = global_table->lookup(name);
                            if(y == nullptr){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error 43"<<endl;
                                yyerror(semantic);
                            }
                            if((y->type[(y->type).size()-1]).compare(converter((yyvsp[-1].attribute_exp).type->down)) != 0 ){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error 44"<<endl;
                                yyerror(semantic);
                            }
                            char *arg1 = strdup((((yyvsp[-1].attribute_exp).loc)->name).c_str());
                            fields_quad x(arg1,0,0,RETURN_EXP,(yyvsp[-1].attribute_exp).loc,0,0);
                            quad_array->emit(x);
                            curr_table->return_ind = 1;
                        }
#line 3172 "y.tab.c"
    break;

  case 80: /* translation_unit: function  */
#line 1501 "A5_19.y"
                                 {
                            // cout<<"Function recognized successfully"<<endl;
                            // global_table->print();
                            string s="main";
                            int ind = 0;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    if((x.type).size() != 2 || x.type[0]!="VOID" || x.type[1]!="INT" || x.nested_table == nullptr){
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error61!\n";
                                        yyerror(semantic);
                                    }
                                    else ind = 1;
                                }
                            }  
                            if(ind == 0){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error62!\n";
                                yyerror(semantic);
                            }
                        }
#line 3199 "y.tab.c"
    break;

  case 82: /* function: internal_declaration  */
#line 1527 "A5_19.y"
                                            {
                            
                        }
#line 3207 "y.tab.c"
    break;

  case 83: /* function: VOID pointer IDENTIFIER OPEN_BRACKET CLOSE_BRACKET SEMI_COLON  */
#line 1530 "A5_19.y"
                                                                                       {
                            string s=(yyvsp[-3].datatype)->name;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic Error10!\n";
                                    yyerror(semantic);
                                }
                            }
                            symbol_table_record *x = new symbol_table_record();
                            x->name = s;
                            (x->type).push_back("VOID");
                            (x->type).push_back("VOID*");
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }
#line 3230 "y.tab.c"
    break;

  case 84: /* function: VOID IDENTIFIER OPEN_BRACKET CLOSE_BRACKET SEMI_COLON  */
#line 1548 "A5_19.y"
                                                                               {
                            string s=(yyvsp[-3].datatype)->name;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic Error11!\n";
                                    yyerror(semantic);
                                }
                            }
                            symbol_table_record *x = new symbol_table_record();
                            x->name = s;
                            (x->type).push_back("VOID");
                            (x->type).push_back("VOID");
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }
#line 3253 "y.tab.c"
    break;

  case 85: /* function: VOID IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET SEMI_COLON  */
#line 1566 "A5_19.y"
                                                                                    {
                            string s=(yyvsp[-4].datatype)->name;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic Error12!\n";
                                    yyerror(semantic);
                                }
                            }
                            symbol_table_record *x = new symbol_table_record();
                            x->name = s;
                            (x->type).push_back("VOID");
                            (x->type).push_back("VOID");
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }
#line 3276 "y.tab.c"
    break;

  case 86: /* function: VOID pointer IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET SEMI_COLON  */
#line 1584 "A5_19.y"
                                                                                            {
                            string s=(yyvsp[-4].datatype)->name;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic Error13!\n";
                                    yyerror(semantic);
                                }
                            }
                            symbol_table_record *x = new symbol_table_record();
                            x->name = s;
                            (x->type).push_back("VOID");
                            (x->type).push_back("VOID*");
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }
#line 3299 "y.tab.c"
    break;

  case 87: /* function: VOID IDENTIFIER OPEN_BRACKET parameter_list2 CLOSE_BRACKET SEMI_COLON  */
#line 1602 "A5_19.y"
                                                                                               {
                            string s=(yyvsp[-4].datatype)->name;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic Error14!\n";
                                    yyerror(semantic);
                                }
                            }
                            symbol_table_record *x = new symbol_table_record();
                            x->name = s;
                            for(int i=0;i<((yyvsp[-2].parametertype)->parameters).size();i++) (x->type).push_back(((yyvsp[-2].parametertype)->parameters)[i]);
                            (x->type).push_back("VOID");
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }
#line 3322 "y.tab.c"
    break;

  case 88: /* function: VOID pointer IDENTIFIER OPEN_BRACKET parameter_list2 CLOSE_BRACKET SEMI_COLON  */
#line 1620 "A5_19.y"
                                                                                                       {
                            string s=(yyvsp[-4].datatype)->name;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic Error15!\n";
                                    yyerror(semantic);
                                }
                            }
                            symbol_table_record *x = new symbol_table_record();
                            x->name = s;
                            for(int i=0;i<((yyvsp[-2].parametertype)->parameters).size();i++) (x->type).push_back(((yyvsp[-2].parametertype)->parameters)[i]);
                            (x->type).push_back("VOID*");
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }
#line 3345 "y.tab.c"
    break;

  case 89: /* function: non_void_type_specifier pointer IDENTIFIER OPEN_BRACKET CLOSE_BRACKET SEMI_COLON  */
#line 1638 "A5_19.y"
                                                                                                          {
                            string s=(yyvsp[-3].datatype)->name;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic Error16!\n";
                                    yyerror(semantic);
                                }
                            }
                            symbol_table_record *x = new symbol_table_record();
                            x->name = s;
                            (x->type).push_back("VOID");
                            (x->type).push_back((yyvsp[-5].datatype)->type+"*");
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }
#line 3368 "y.tab.c"
    break;

  case 90: /* function: non_void_type_specifier IDENTIFIER OPEN_BRACKET CLOSE_BRACKET SEMI_COLON  */
#line 1656 "A5_19.y"
                                                                                                  {
                            string s=(yyvsp[-3].datatype)->name;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic Error17!\n";
                                    yyerror(semantic);
                                }
                            }
                            symbol_table_record *x = new symbol_table_record();
                            x->name = s;
                            (x->type).push_back("VOID");
                            (x->type).push_back((yyvsp[-4].datatype)->type);
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }
#line 3391 "y.tab.c"
    break;

  case 91: /* function: non_void_type_specifier IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET SEMI_COLON  */
#line 1674 "A5_19.y"
                                                                                                       {
                            string s=(yyvsp[-4].datatype)->name;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic Error18!\n";
                                    yyerror(semantic);
                                }
                            }
                            symbol_table_record *x = new symbol_table_record();
                            x->name = s;
                            (x->type).push_back("VOID");
                            (x->type).push_back((yyvsp[-5].datatype)->type);
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }
#line 3414 "y.tab.c"
    break;

  case 92: /* function: non_void_type_specifier pointer IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET SEMI_COLON  */
#line 1692 "A5_19.y"
                                                                                                               {
                            string s=(yyvsp[-4].datatype)->name;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic Error19!\n";
                                    yyerror(semantic);
                                }
                            }
                            symbol_table_record *x = new symbol_table_record();
                            x->name = s;
                            (x->type).push_back("VOID");
                            (x->type).push_back((yyvsp[-6].datatype)->type+"*");
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }
#line 3437 "y.tab.c"
    break;

  case 93: /* function: non_void_type_specifier IDENTIFIER OPEN_BRACKET parameter_list2 CLOSE_BRACKET SEMI_COLON  */
#line 1710 "A5_19.y"
                                                                                                                  {
                            string s=(yyvsp[-4].datatype)->name;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic Error20!\n";
                                    yyerror(semantic);
                                }
                            }
                            symbol_table_record *x = new symbol_table_record();
                            x->name = s;
                            for(int i=0;i<((yyvsp[-2].parametertype)->parameters).size();i++) (x->type).push_back(((yyvsp[-2].parametertype)->parameters)[i]);
                            (x->type).push_back((yyvsp[-5].datatype)->type);
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }
#line 3460 "y.tab.c"
    break;

  case 94: /* function: non_void_type_specifier pointer IDENTIFIER OPEN_BRACKET parameter_list2 CLOSE_BRACKET SEMI_COLON  */
#line 1728 "A5_19.y"
                                                                                                                          {
                            string s=(yyvsp[-4].datatype)->name;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic Error21!\n";
                                    yyerror(semantic);
                                }
                            }
                            symbol_table_record *x = new symbol_table_record();
                            x->name = s;
                            for(int i=0;i<((yyvsp[-2].parametertype)->parameters).size();i++) (x->type).push_back(((yyvsp[-2].parametertype)->parameters)[i]);
                            (x->type).push_back((yyvsp[-6].datatype)->type+"*");
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }
#line 3483 "y.tab.c"
    break;

  case 96: /* $@1: %empty  */
#line 1751 "A5_19.y"
                                                                   {
                            string s=(yyvsp[-2].datatype)->name;
                            int ind=0;
                            curr_table = new symbol_table(local_symbol_table_size);
                            curr_table->name = s;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    //parameter types and names should be checked.
                                    if((global_table->list[i]).nested_table!=nullptr){
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error22!\n";
                                        yyerror(semantic);
                                    }
                                    (global_table->list[i]).nested_table=curr_table;
                                    ind=1;
                                }
                            }
                            if(ind==0){
                                symbol_table_record *x = new symbol_table_record();
                                x->name = s;
                                // for(int i=0;i<($5->parameters).size();i++) (x->type).push_back(($5->parameters)[i]);
                                (x->type).push_back("VOID");
                                (x->type).push_back("VOID");
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            
                            char* t = strdup(s.c_str());
                            fields_quad x(t,0,0,Function,0,0,0);
                            quad_array->emit(x);
                            

                        }
#line 3524 "y.tab.c"
    break;

  case 98: /* $@2: %empty  */
#line 1787 "A5_19.y"
                                                                             {
                            string s=(yyvsp[-2].datatype)->name;
                            int ind=0;
                            curr_table = new symbol_table(local_symbol_table_size);
                            curr_table->name = s;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    //parameter types and names should be checked.
                                    if((global_table->list[i]).nested_table!=nullptr){
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error23!\n";
                                        yyerror(semantic);
                                    }
                                    (global_table->list[i]).nested_table = curr_table;
                                    ind=1;
                                }
                            }
                            if(ind==0){
                                symbol_table_record *x = new symbol_table_record();
                                x->name = s;
                                // for(int i=0;i<($5->parameters).size();i++) (x->type).push_back(($5->parameters)[i]);
                                (x->type).push_back("VOID");
                                (x->type).push_back("VOID*");
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            

                            char* t = strdup(s.c_str());
                            fields_quad x(t,0,0,Function,0,0,0);
                            quad_array->emit(x);

                        }
#line 3565 "y.tab.c"
    break;

  case 100: /* $@3: %empty  */
#line 1823 "A5_19.y"
                                                                                     {
                            // cout<<"Testing function"<<endl;
                            string s=(yyvsp[-3].datatype)->name;
                            int ind=0;
                            curr_table = new symbol_table(local_symbol_table_size);
                            curr_table->name = s;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    //parameter types and names should be checked.
                                    if((global_table->list[i]).nested_table!=nullptr){
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error24!\n";
                                        yyerror(semantic);
                                    }
                                    (global_table->list[i]).nested_table=curr_table;
                                    ind=1;
                                }
                            }
                            if(ind==0){
                                symbol_table_record *x = new symbol_table_record();
                                x->name = s;
                                for(int i=0;i<((yyvsp[-1].parametertype)->parameters).size();i++) (x->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                (x->type).push_back("VOID");
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            
                            
                            int curr_offset=0;
                            for(int i=0;i<((yyvsp[-1].parametertype)->parameters).size();i++){
                                symbol_table_record* y=new symbol_table_record();
                                if(((yyvsp[-1].parametertype)->parameters)[i]=="INT"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y); 
                                }
                                else if(((yyvsp[-1].parametertype)->parameters)[i]=="CHAR"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 1; 
                                    y->offset = curr_offset;
                                    curr_offset+=1;
                                    curr_table->insert(y);  
                                }
                                else if(((yyvsp[-1].parametertype)->parameters)[i]=="INT*"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y);  
                                }
                                else if(((yyvsp[-1].parametertype)->parameters)[i]=="CHAR*"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]); 
                                    y->size = 1; 
                                    y->offset = curr_offset;
                                    curr_offset+=1;
                                    curr_table->insert(y);  
                                }
                                else if(((yyvsp[-1].parametertype)->parameters)[i]=="VOID*"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y);  
                                }
                                else{
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic Error25!\n";
                                    yyerror(semantic);
                                }
                            }

                            char* t = strdup(s.c_str());
                            fields_quad x(t,0,0,Function,0,0,0);
                            quad_array->emit(x);
                            // global_table->print();

                        }
#line 3657 "y.tab.c"
    break;

  case 102: /* $@4: %empty  */
#line 1910 "A5_19.y"
                                                                                             {
                            string s=(yyvsp[-3].datatype)->name;
                            int ind=0;
                            curr_table = new symbol_table(local_symbol_table_size);
                            curr_table->name = s;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    //parameter types and names should be checked.
                                    if((global_table->list[i]).nested_table!=nullptr){
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error26!\n";
                                        yyerror(semantic);
                                    }
                                    (global_table->list[i]).nested_table = curr_table;
                                    ind=1;
                                }
                            }
                            if(ind==0){
                                symbol_table_record *x = new symbol_table_record();
                                x->name = s;
                                for(int i=0;i<((yyvsp[-1].parametertype)->parameters).size();i++) (x->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                (x->type).push_back("VOID*");
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            

                            int curr_offset=0;
                            for(int i=0;i<((yyvsp[-1].parametertype)->parameters).size();i++){
                                symbol_table_record* y=new symbol_table_record();
                                if(((yyvsp[-1].parametertype)->parameters)[i]=="INT"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y); 
                                }
                                else if(((yyvsp[-1].parametertype)->parameters)[i]=="CHAR"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 1; 
                                    y->offset = curr_offset;
                                    curr_offset+=1;
                                    curr_table->insert(y);  
                                }
                                else if(((yyvsp[-1].parametertype)->parameters)[i]=="INT*"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y);  
                                }
                                else if(((yyvsp[-1].parametertype)->parameters)[i]=="CHAR*"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 1; 
                                    y->offset = curr_offset;
                                    curr_offset+=1;
                                    curr_table->insert(y);  
                                }
                                else if(((yyvsp[-1].parametertype)->parameters)[i]=="VOID*"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y);  
                                }
                                else{
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic Error27!\n";
                                    yyerror(semantic);
                                }
                            }

                            char* t = strdup(s.c_str());
                            fields_quad x(t,0,0,Function,0,0,0);
                            quad_array->emit(x);

                        }
#line 3747 "y.tab.c"
    break;

  case 104: /* $@5: %empty  */
#line 1995 "A5_19.y"
                                                                          {
                            string s=(yyvsp[-3].datatype)->name;
                            int ind=0;
                            curr_table = new symbol_table(local_symbol_table_size);
                            curr_table->name = s;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    //parameter types and names should be checked.
                                    if((global_table->list[i]).nested_table!=nullptr){
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error28!\n";
                                        yyerror(semantic);
                                    }
                                    (global_table->list[i]).nested_table = curr_table;
                                    ind=1;
                                }
                            }
                            if(ind==0){
                                symbol_table_record *x = new symbol_table_record();
                                x->name = s;
                                // for(int i=0;i<($5->parameters).size();i++) (x->type).push_back(($5->parameters)[i]);
                                (x->type).push_back("VOID");
                                (x->type).push_back("VOID");
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            

                            char* t = strdup(s.c_str());
                            fields_quad x(t,0,0,Function,0,0,0);
                            quad_array->emit(x);

                        }
#line 3788 "y.tab.c"
    break;

  case 106: /* $@6: %empty  */
#line 2031 "A5_19.y"
                                                                                  {
                            string s=(yyvsp[-3].datatype)->name;
                            int ind=0;
                            curr_table = new symbol_table(local_symbol_table_size);
                            curr_table->name = s;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    //parameter types and names should be checked.
                                    if((global_table->list[i]).nested_table!=nullptr){
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error29!\n";
                                        yyerror(semantic);
                                    }
                                    (global_table->list[i]).nested_table = curr_table;
                                    ind=1;
                                    break;
                                }
                            }
                            if(ind==0){
                                symbol_table_record *x = new symbol_table_record();
                                x->name = s;
                                // for(int i=0;i<($5->parameters).size();i++) (x->type).push_back(($5->parameters)[i]);
                                (x->type).push_back("VOID");
                                (x->type).push_back("VOID*");
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            
                            
                            char* t = strdup(s.c_str());
                            fields_quad x(t,0,0,Function,0,0,0);
                            quad_array->emit(x);

                        }
#line 3830 "y.tab.c"
    break;

  case 108: /* $@7: %empty  */
#line 2068 "A5_19.y"
                                                                                        {
                            // cout<<"Testing..."<<endl;
                            // global_table->print();
                            string s=(yyvsp[-2].datatype)->name;
                            // cout<<"Testing "<<s<<endl;
                            int ind=0;
                            curr_table = new symbol_table(local_symbol_table_size);
                            curr_table->name = s;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    //parameter types and names should be checked.
                                    if((global_table->list[i]).nested_table!=nullptr){
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error30!\n";
                                        yyerror(semantic);
                                    }
                                    (global_table->list[i]).nested_table=curr_table;
                                    ind=1;
                                }
                            }
                            if(ind==0){
                                symbol_table_record *x = new symbol_table_record();
                                x->name = s;
                                // for(int i=0;i<($5->parameters).size();i++) (x->type).push_back(($5->parameters)[i]);
                                (x->type).push_back("VOID");
                                (x->type).push_back((yyvsp[-3].datatype)->type);
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            
                            char* t = strdup(s.c_str());
                            fields_quad x(t,0,0,Function,0,0,0);
                            quad_array->emit(x);

                        }
#line 3873 "y.tab.c"
    break;

  case 110: /* $@8: %empty  */
#line 2106 "A5_19.y"
                                                                                                {
                            string s=(yyvsp[-2].datatype)->name;
                            int ind=0;
                            curr_table = new symbol_table(local_symbol_table_size);
                            curr_table->name = s;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    //parameter types and names should be checked.
                                    if((global_table->list[i]).nested_table!=nullptr){
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error31!\n";
                                        yyerror(semantic);
                                    }
                                    global_table->list[i].nested_table = curr_table;
                                    ind=1;
                                }
                            }
                            if(ind==0){
                                symbol_table_record *x = new symbol_table_record();
                                x->name = s;
                                // for(int i=0;i<($5->parameters).size();i++) (x->type).push_back(($5->parameters)[i]);
                                (x->type).push_back("VOID");
                                (x->type).push_back((yyvsp[-4].datatype)->type+"*");
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            

                            char* t = strdup(s.c_str());
                            fields_quad x(t,0,0,Function,0,0,0);
                            quad_array->emit(x);

                        }
#line 3914 "y.tab.c"
    break;

  case 112: /* $@9: %empty  */
#line 2142 "A5_19.y"
                                                                                                        {
                            string s=(yyvsp[-3].datatype)->name;
                            int ind=0;
                            curr_table = new symbol_table(local_symbol_table_size);
                            curr_table->name = s;

                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    //parameter types and names should be checked.
                                    if((global_table->list[i]).nested_table!=nullptr){
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error32!\n";
                                        yyerror(semantic);
                                    }
                                    (global_table->list[i]).nested_table=curr_table;
                                    ind=1;
                                }
                            }
                            if(ind==0){
                                symbol_table_record *x = new symbol_table_record();
                                x->name = s;
                                for(int i=0;i<((yyvsp[-1].parametertype)->parameters).size();i++) (x->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                (x->type).push_back((yyvsp[-4].datatype)->type);
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            

                            int curr_offset=0;
                            for(int i=0;i<((yyvsp[-1].parametertype)->parameters).size();i++){
                                symbol_table_record* y=new symbol_table_record();
                                if(((yyvsp[-1].parametertype)->parameters)[i]=="INT"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y); 
                                }
                                else if(((yyvsp[-1].parametertype)->parameters)[i]=="CHAR"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 1; 
                                    y->offset = curr_offset;
                                    curr_offset+=1;
                                    curr_table->insert(y);  
                                }
                                else if(((yyvsp[-1].parametertype)->parameters)[i]=="INT*"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y);  
                                }
                                else if(((yyvsp[-1].parametertype)->parameters)[i]=="CHAR*"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 1; 
                                    y->offset = curr_offset;
                                    curr_offset+=1;
                                    curr_table->insert(y);  
                                }
                                else if(((yyvsp[-1].parametertype)->parameters)[i]=="VOID*"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y);  
                                }
                                else{
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic Error33!\n";
                                    yyerror(semantic);
                                }
                            }

                            char* t = strdup(s.c_str());
                            fields_quad x(t,0,0,Function,0,0,0);
                            quad_array->emit(x);

                        }
#line 4005 "y.tab.c"
    break;

  case 114: /* $@10: %empty  */
#line 2228 "A5_19.y"
                                                                                                                {
                            string s=(yyvsp[-3].datatype)->name;
                            int ind=0;
                            curr_table = new symbol_table(local_symbol_table_size);
                            curr_table->name = s;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    //parameter types and names should be checked.
                                    if((global_table->list[i]).nested_table!=nullptr){
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error34!\n";
                                        yyerror(semantic);
                                    }
                                    (global_table->list[i]).nested_table = curr_table;
                                    ind=1;
                                }
                            }
                            if(ind==0){
                                symbol_table_record *x = new symbol_table_record();
                                x->name = s;
                                for(int i=0;i<((yyvsp[-1].parametertype)->parameters).size();i++) (x->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                (x->type).push_back((yyvsp[-5].datatype)->type+"*");
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            
                            
                            int curr_offset=0;
                            for(int i=0;i<((yyvsp[-1].parametertype)->parameters).size();i++){
                                symbol_table_record* y=new symbol_table_record();
                                if(((yyvsp[-1].parametertype)->parameters)[i]=="INT"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y); 
                                }
                                else if(((yyvsp[-1].parametertype)->parameters)[i]=="CHAR"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 1; 
                                    y->offset = curr_offset;
                                    curr_offset+=1;
                                    curr_table->insert(y);  
                                }
                                else if(((yyvsp[-1].parametertype)->parameters)[i]=="INT*"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y);  
                                }
                                else if(((yyvsp[-1].parametertype)->parameters)[i]=="CHAR*"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 1; 
                                    y->offset = curr_offset;
                                    curr_offset+=1;
                                    curr_table->insert(y);  
                                }
                                else if(((yyvsp[-1].parametertype)->parameters)[i]=="VOID*"){
                                    y->name = ((yyvsp[-1].parametertype)->names)[i]; 
                                    (y->type).push_back(((yyvsp[-1].parametertype)->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y);  
                                }
                                else{
                                    char semantic[20]="Semantic Error!\n";
                                    cout<<"Semantic Error35!\n";
                                    yyerror(semantic);
                                }
                            }

                            char* t = strdup(s.c_str());
                            fields_quad x(t,0,0,Function,0,0,0);
                            quad_array->emit(x);

                        }
#line 4095 "y.tab.c"
    break;

  case 116: /* $@11: %empty  */
#line 2313 "A5_19.y"
                                                                                             {
                            string s=(yyvsp[-3].datatype)->name;
                            int ind=0;
                            curr_table = new symbol_table(local_symbol_table_size);
                            curr_table->name = s;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    //parameter types and names should be checked.
                                    if((global_table->list[i]).nested_table!=nullptr){
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error36!\n";
                                        yyerror(semantic);
                                    }
                                    (global_table->list[i]).nested_table = curr_table;
                                    ind=1;
                                }
                            }
                            if(ind==0){
                                symbol_table_record *x = new symbol_table_record();
                                x->name = s;
                                // for(int i=0;i<($5->parameters).size();i++) (x->type).push_back(($5->parameters)[i]);
                                (x->type).push_back("VOID");
                                (x->type).push_back((yyvsp[-4].datatype)->type);
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            

                            char* t = strdup(s.c_str());
                            fields_quad x(t,0,0,Function,0,0,0);
                            quad_array->emit(x);

                        }
#line 4136 "y.tab.c"
    break;

  case 118: /* $@12: %empty  */
#line 2349 "A5_19.y"
                                                                                                     {
                            string s=(yyvsp[-3].datatype)->name;
                            int ind=0;
                            curr_table = new symbol_table(local_symbol_table_size);
                            curr_table->name = s;
                            for(int i=0;i<global_table->curr_size;i++){
                                symbol_table_record x=global_table->list[i];
                                if(s.compare(x.name)==0){
                                    //parameter types and names should be checked.
                                    if((global_table->list[i]).nested_table!=nullptr){
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error37!\n";
                                        yyerror(semantic);
                                    }
                                    (global_table->list[i]).nested_table = curr_table;
                                    ind=1;
                                }
                            }
                            if(ind==0){
                                symbol_table_record *x = new symbol_table_record();
                                x->name = s;
                                // for(int i=0;i<($5->parameters).size();i++) (x->type).push_back(($5->parameters)[i]);
                                (x->type).push_back("VOID");
                                (x->type).push_back((yyvsp[-5].datatype)->type+"*");
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }

                            char* t = strdup(s.c_str());
                            fields_quad x(t,0,0,Function,0,0,0);
                            quad_array->emit(x);

                        }
#line 4176 "y.tab.c"
    break;

  case 120: /* M: %empty  */
#line 2386 "A5_19.y"
                                {
                    //This augmentation is required to store the next instructions in conditional statements.
					(yyval.instr) = next_instr;
				}
#line 4185 "y.tab.c"
    break;

  case 121: /* N: %empty  */
#line 2393 "A5_19.y"
        {
            //Used to print the goto label for conditional statements.
            (yyval.N_attr) = makelist(next_instr);
            fields_quad x(0,0,0,GOTO_,0,0,0);
            quad_array->emit(x);
        }
#line 4196 "y.tab.c"
    break;

  case 122: /* O: %empty  */
#line 2402 "A5_19.y"
        {
            address_ind = 1;
        }
#line 4204 "y.tab.c"
    break;

  case 123: /* F: %empty  */
#line 2407 "A5_19.y"
        {
            //This augmentation is required to change the current symbol table from the local symbol table to the global symbol symbol table.
            if(curr_table->return_ind == 0){
                string name = curr_table->name;
                symbol_table_record *y = global_table->lookup(name);
                if(y == nullptr){
                    char semantic[20]="Semantic Error!\n";
                    cout<<"Semantic Error 45"<<endl;
                    yyerror(semantic);
                }
                if((y->type[(y->type).size()-1]).compare("VOID") != 0 ){
                    char semantic[20]="Semantic Error!\n";
                    cout<<"Semantic Error 46"<<endl;
                    yyerror(semantic);
                }
                fields_quad x(0,0,0,RETURN_,0,0,0);
                quad_array->emit(x);
            }

            curr_table = global_table;
        }
#line 4230 "y.tab.c"
    break;


#line 4234 "y.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 2429 "A5_19.y"


void yyerror(const char *s) {
    printf("The following error occurred in line number %d : %s\n",yylineno, s);
    exit(1);
}
