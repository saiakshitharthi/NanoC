%{
    #include<stdio.h>
    extern int yylex();
    extern int number_of_lines;
    void yyerror(const char*);
    int count = 0;
    extern char* yytext;
%}



%token COMMENT        
%token VOID
%token CHAR
%token INT 
%token IF 
%token ELSE 
%token FOR 
%token RETURN
%token IDENTIFIER
%token POINTER_INDIRECTION
%token LESS_THAN_OR_EQUAL
%token GREATER_THAN_OR_EQUAL
%token EQUAL_TO 
%token NOT_EQUAL_TO
%token LOGICAL_OR
%token LOGICAL_AND
%token OPEN_SQUARE_BRACKET
%token CLOSE_SQUARE_BRACKET
%token OPEN_BRACKET
%token CLOSE_BRACKET
%token OPEN_FLOWER_BRACKET
%token CLOSE_FLOWER_BRACKET
%token AND
%token MULT
%token ADD
%token SUB
%token DIV
%token REMAINDER
%token NOT
%token QUESTION_MARK
%token LESS_THAN
%token GREATER_THAN
%token EQUAL
%token COLON
%token SEMI_COLON
%token COMMA
%token INTEGER_CONSTANT
%token CHAR_CONSTANT
%token STRING_LITERAL
%token ERROR


%left COMMA
%right EQUAL
%right QUESTION_MARK COLON
%left LOGICAL_OR
%left LOGICAL_AND 
%left AND
%left EQUAL_TO NOT_EQUAL_TO
%left LESS_THAN GREATER_THAN LESS_THAN_OR_EQUAL GREATER_THAN_OR_EQUAL
%left ADD SUB
%left MULT DIV REMAINDER
%nonassoc NOT
%nonassoc POINTER_INDIRECTION
%nonassoc OPEN_SQUARE_BRACKET CLOSE_SQUARE_BRACKET
%nonassoc OPEN_BRACKET CLOSE_BRACKET 



%start translation_unit



%%

/**** Expressions ****/

    primary_expression : 
                        IDENTIFIER 
                        | INTEGER_CONSTANT
                        | CHAR_CONSTANT 
                        | STRING_LITERAL 
                        | OPEN_BRACKET expression CLOSE_BRACKET ;

    postfix_expression : 
                        primary_expression 
                        | postfix_expression OPEN_SQUARE_BRACKET expression CLOSE_SQUARE_BRACKET
                        | postfix_expression OPEN_BRACKET CLOSE_BRACKET
                        | postfix_expression OPEN_BRACKET argument_expression_list CLOSE_BRACKET
                        | postfix_expression POINTER_INDIRECTION IDENTIFIER ;

    argument_expression_list :
                        assignment_expression
                        | argument_expression_list COMMA assignment_expression ;

    unary_expression :
                        postfix_expression
                        | unary_operator unary_expression ;

    unary_operator :
                        AND 
                        | MULT
                        | ADD 
                        | SUB 
                        | NOT ;

    multiplicative_expression :
                        unary_expression
                        | multiplicative_expression MULT unary_expression
                        | multiplicative_expression DIV unary_expression
                        | multiplicative_expression REMAINDER unary_expression ;

    additive_expression :
                        multiplicative_expression 
                        | additive_expression ADD multiplicative_expression
                        | additive_expression SUB multiplicative_expression ;

    relational_expression :
                        additive_expression
                        | relational_expression LESS_THAN additive_expression
                        | relational_expression GREATER_THAN additive_expression
                        | relational_expression LESS_THAN_OR_EQUAL additive_expression
                        | relational_expression GREATER_THAN_OR_EQUAL additive_expression ;

    equality_expression :
                        relational_expression
                        | equality_expression EQUAL_TO relational_expression 
                        | equality_expression NOT_EQUAL_TO relational_expression ;

    logical_AND_expression :
                        equality_expression 
                        | logical_AND_expression LOGICAL_AND equality_expression ;
                    
    logical_OR_expression :
                        logical_AND_expression 
                        | logical_OR_expression LOGICAL_OR logical_AND_expression ;
                
    conditional_expression :
                        logical_OR_expression 
                        | logical_OR_expression QUESTION_MARK expression COLON conditional_expression ;

    assignment_expression :
                        conditional_expression 
                        | unary_expression EQUAL assignment_expression ;

    expression :
                        assignment_expression     


/******* Declarations ********/


    //Added void                        
    internal_declaration :                                                              //Newly added.
                        non_void_type_specifier declarator 
                        | VOID pointer direct_declarator
                        // | INT direct_declarator
                        // | CHAR direct_declarator
                        // | VOID direct_declarator;
                        //| special_non_void_type_specifier direct_declarator  ;                          //void is not allowed.
                        
    // function_types :
    //                     pointer function_specs
    //                     | function_specs ;

    // declaration :
    //                     internal_declaration   
    //                     | non_void_type_specifier function_types  ;           //Error Resolved here by adding SEMI_COLON.


    // special_non_void_type_specifier :
    //                     CHAR
    //                     | INT ;
    
    // init_declarator :
    //                     direct_declarator 
    //                     | pointer IDENTIFIER                                            //Newly added.
    //                     | pointer IDENTIFIER EQUAL initializer                          //Newly added.
    //                     | IDENTIFIER EQUAL initializer ;                                //IDENTIFIER added inplace of declarator.
                         

    direct_declarator :
                        IDENTIFIER OPEN_SQUARE_BRACKET INTEGER_CONSTANT CLOSE_SQUARE_BRACKET SEMI_COLON 
                        | IDENTIFIER SEMI_COLON
                        | IDENTIFIER EQUAL initializer SEMI_COLON ;
                        

    // function_specs :
    //                     IDENTIFIER OPEN_BRACKET CLOSE_BRACKET SEMI_COLON
    //                     | IDENTIFIER OPEN_BRACKET parameter_list CLOSE_BRACKET SEMI_COLON ; 
                     

    //Removed void
    non_void_type_specifier :
                         CHAR
                        | INT ;

    declarator   :       direct_declarator
                         |                                                               //Removed because it doesn't required.
                         pointer direct_declarator ;

    // direct_declarator :
    //                     IDENTIFIER                                                                
    //                     | IDENTIFIER OPEN_SQUARE_BRACKET INTEGER_CONSTANT CLOSE_SQUARE_BRACKET     
    //                     | IDENTIFIER OPEN_BRACKET CLOSE_BRACKET                                  
    //                     | IDENTIFIER OPEN_BRACKET parameter_list CLOSE_BRACKET ;                  

    pointer :
                        MULT ;
    
    parameter_list :
                        parameter_declaration 
                        | parameter_list COMMA parameter_declaration ;
    //Changed here, all declarations as non void or void *
    parameter_declaration :
                          non_void_type_specifier 
                        | INT IDENTIFIER
                        | CHAR IDENTIFIER
                        | non_void_type_specifier pointer
                        | non_void_type_specifier pointer IDENTIFIER
                        | VOID pointer
                        | VOID pointer IDENTIFIER ;

    initializer :                                                                          // Need to be checked for errors.
                        assignment_expression ;



/******** Statements ********/


    statement :
                        compound_statement 
                        | expression_statement 
                        | selection_statement 
                        | iteration_statement
                        | jump_statement ;

    compound_statement :
                        OPEN_FLOWER_BRACKET CLOSE_FLOWER_BRACKET
                        | OPEN_FLOWER_BRACKET block_item_list CLOSE_FLOWER_BRACKET ;

    block_item_list :
                        block_item
                        | block_item_list block_item ;
    
    block_item :
                        internal_declaration                                                //Internal declerations to avoid function definitions.
                        | statement ;

    expression_statement :
                        SEMI_COLON 
                        | expression SEMI_COLON ;                                           //expression should be checked for errors.
                    
    selection_statement :
                        IF OPEN_BRACKET expression CLOSE_BRACKET statement ELSE statement 
                        | IF OPEN_BRACKET expression CLOSE_BRACKET statement ;

    iteration_statement :                                                                   //expression should be checked for errors.
                        FOR OPEN_BRACKET SEMI_COLON SEMI_COLON CLOSE_BRACKET statement
                        | FOR OPEN_BRACKET expression SEMI_COLON SEMI_COLON CLOSE_BRACKET statement
                        | FOR OPEN_BRACKET SEMI_COLON expression SEMI_COLON CLOSE_BRACKET statement
                        | FOR OPEN_BRACKET SEMI_COLON SEMI_COLON expression CLOSE_BRACKET statement
                        | FOR OPEN_BRACKET expression SEMI_COLON expression SEMI_COLON CLOSE_BRACKET statement
                        | FOR OPEN_BRACKET SEMI_COLON expression SEMI_COLON expression CLOSE_BRACKET statement
                        | FOR OPEN_BRACKET expression SEMI_COLON SEMI_COLON expression CLOSE_BRACKET statement
                        | FOR OPEN_BRACKET expression SEMI_COLON expression SEMI_COLON expression CLOSE_BRACKET statement ;

    jump_statement :
                        RETURN SEMI_COLON
                        | RETURN expression SEMI_COLON ;                                    //expression should be checked for errors.


/********* Translation Unit *********/


    translation_unit :  //Error here.
                        function 
                        | function translation_unit ;
                        
    function :
                        internal_declaration 
                        | VOID pointer IDENTIFIER OPEN_BRACKET CLOSE_BRACKET SEMI_COLON
                        | VOID IDENTIFIER OPEN_BRACKET CLOSE_BRACKET SEMI_COLON
                        | VOID IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET SEMI_COLON 
                        | VOID pointer IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET SEMI_COLON
                        | VOID IDENTIFIER OPEN_BRACKET parameter_list CLOSE_BRACKET SEMI_COLON 
                        | VOID pointer IDENTIFIER OPEN_BRACKET parameter_list CLOSE_BRACKET SEMI_COLON 
                        | non_void_type_specifier pointer IDENTIFIER OPEN_BRACKET CLOSE_BRACKET SEMI_COLON
                        | non_void_type_specifier IDENTIFIER OPEN_BRACKET CLOSE_BRACKET SEMI_COLON
                        | non_void_type_specifier IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET SEMI_COLON 
                        | non_void_type_specifier pointer IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET SEMI_COLON 
                        | non_void_type_specifier IDENTIFIER OPEN_BRACKET parameter_list CLOSE_BRACKET SEMI_COLON 
                        | non_void_type_specifier pointer IDENTIFIER OPEN_BRACKET parameter_list CLOSE_BRACKET SEMI_COLON 
                        | function_definition ;

    
    function_definition :  //Error Found here.
                        VOID IDENTIFIER OPEN_BRACKET CLOSE_BRACKET compound_statement 
                        | VOID pointer IDENTIFIER OPEN_BRACKET CLOSE_BRACKET compound_statement 
                        | VOID IDENTIFIER OPEN_BRACKET parameter_list CLOSE_BRACKET compound_statement 
                        | VOID pointer IDENTIFIER OPEN_BRACKET parameter_list CLOSE_BRACKET compound_statement
                        | VOID IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET compound_statement 
                        | VOID pointer IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET compound_statement
                        | non_void_type_specifier IDENTIFIER OPEN_BRACKET CLOSE_BRACKET compound_statement 
                        | non_void_type_specifier pointer IDENTIFIER OPEN_BRACKET CLOSE_BRACKET compound_statement 
                        | non_void_type_specifier IDENTIFIER OPEN_BRACKET parameter_list CLOSE_BRACKET compound_statement 
                        | non_void_type_specifier pointer IDENTIFIER OPEN_BRACKET parameter_list CLOSE_BRACKET compound_statement
                        | non_void_type_specifier IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET compound_statement 
                        | non_void_type_specifier pointer IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET compound_statement ;
    
    //Removed this to avoid warning given by bison parser.
    /*declaration_list :
                        declaration 
                        | declaration_list declaration ;*/

%%

void yyerror(const char *s) {
    printf("The following error occurred in line number %d : %s\n",number_of_lines, s);
}