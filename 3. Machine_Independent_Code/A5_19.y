%{
    #include<bits/stdc++.h>
    #include "A5_19_translator.h"
    extern int yylex();
    void yyerror(const char*);
    extern char* yytext;
    extern int yylineno;
    using namespace std;
%}

%code requires{
    #include "A5_19_translator.h"
}

%union{//Expanation for every data type is specified in .h file.
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
}

%token COMMENT 
%token ERROR       
%token VOID
%token IF 
%token ELSE 
%token FOR 
%token RETURN
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
%token DIVIDE
%token REMAINDER
%token NOT
%token QUESTION_MARK
%token LESS_THAN
%token GREATER_THAN
%token EQUAL
%token COLON
%token SEMI_COLON
%token COMMA
%token CHAR
%token INT 
%token <datatype> IDENTIFIER
%token <intval> INTEGER_CONSTANT
%token <charval> CHAR_CONSTANT
%token <strval> STRING_LITERAL

%type <attribute_exp> primary_expression
%type <attribute_exp> postfix_expression
%type <param_attr> argument_expression_list
%type <attribute_exp> unary_expression
%type <attribute_unary> unary_operator
%type <attribute_exp> multiplicative_expression
%type <attribute_exp> additive_expression
%type <attribute_exp> relational_expression
%type <attribute_exp> equality_expression
%type <attribute_exp> logical_AND_expression
%type <attribute_exp> logical_OR_expression
%type <attribute_exp> conditional_expression
%type <attribute_exp> assignment_expression
%type <attribute_exp> expression

%type <datatype> internal_declaration
%type <datatype> direct_declarator
%type <datatype> non_void_type_specifier
%type <datatype> declarator
%type <datatype> pointer
%type <parametertype> parameter_list2
%type <datatype> parameter_declaration2
%type <datatype> initializer

%type <attribute_exp> statement
%type <attribute_exp> compound_statement
%type <attribute_exp> block_item_list
%type <attribute_exp> block_item
%type <attribute_exp> expression_statement
%type <attribute_exp> selection_statement
%type <attribute_exp> iteration_statement
%type <attribute_exp> jump_statement
%type <instr> M;
%type <N_attr> N;
%type <instr> O;




//Defining the association and precedences.

%left COMMA
%right EQUAL
%right QUESTION_MARK COLON
%left LOGICAL_OR
%left LOGICAL_AND 
%left AND
%left EQUAL_TO NOT_EQUAL_TO
%left LESS_THAN GREATER_THAN LESS_THAN_OR_EQUAL GREATER_THAN_OR_EQUAL
%left ADD SUB
%left MULT DIVIDE REMAINDER
%nonassoc NOT
%nonassoc POINTER_INDIRECTION
%nonassoc OPEN_SQUARE_BRACKET CLOSE_SQUARE_BRACKET
%nonassoc OPEN_BRACKET CLOSE_BRACKET 


%start translation_unit



%%

/**** Expressions ****/

    primary_expression : 
                        IDENTIFIER{
                            symbol_table_record* x = curr_table->lookup($1->name);
                            if(!x)
                                x = global_table->lookup($1->name);

                            if(x == nullptr){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error47!\n";
                                yyerror(semantic);
                            }

                            $$.loc = x;
                            $1->loc = x;
                            //$$.type = ($1.loc)->Type;
                            date_types dt;
                            string ss = (x->type)[0];
                            if(((x->type).size())>1){
                                dt = FUNCTION;
                                $$.type = new_node(dt,-1);
                            }
                            else if(x->array_ind == 1){
                                // cout<<$1->name<<endl;
                                dt = ARRAY;
                                // $$.type = new_node(dt,x->size);
                                if(ss.compare("INT")==0){
                                    $$.type = new_node(dt,-1);
                                    $$.type->up = INT_;
                                }
                                else if(ss.compare("CHAR")==0){
                                    $$.type = new_node(dt,-1);
                                    $$.type->up = CHAR_;
                                }
                                else if(ss.compare("INT*")==0){
                                    $$.type = new_node(dt,-1);
                                    $$.type->up = INT_PTR;
                                }
                                else if(ss.compare("CHAR*")==0){
                                    $$.type = new_node(dt,-1);
                                    $$.type->up = CHAR_PTR;
                                }
                            }
                            else{
                                // cout<<$1->name<<endl;
                                if(ss.compare("INT")==0) $$.type = new_node(INT_,-1);
                                else if(ss.compare("INT")==0 && x->array_ind==1) $$.type = new_node(INT_PTR,-1);
                                else if(ss.compare("CHAR")==0) $$.type = new_node(CHAR_,-1);
                                else if(ss.compare("CHAR")==0 && x->array_ind==1) $$.type = new_node(CHAR_PTR,-1);
                                else if(ss.compare("INT*")==0) $$.type = new_node(INT_PTR,-1);
                                else if(ss.compare("CHAR*")==0) $$.type = new_node(CHAR_PTR,-1);
                                else if(ss.compare("VOID*")==0) $$.type = new_node(PTR,-1);
                                // $$.type = new_node(dt,-1);
                            }

                            $$.array = $$.loc;
                            $$.loc1 = 0;
                        }
                        | INTEGER_CONSTANT{
                            $$.val.int_data = $1;
                            $$.ind=1;
                            $$.type = new_node(INT_,-1);
                            $$.loc = curr_table->gentemp(INT_);
                            char *arg1 = new char[10];
                            sprintf(arg1,"%d",$1);
                            char *res = strdup((($$.loc)->name).c_str());
                            fields_quad x(arg1,0,res,ASSIGN,0,0,$$.loc);
                            quad_array->emit(x);
                        }
                        | CHAR_CONSTANT{
                            $$.val.char_data = $1;
                            $$.ind=2;
                            $$.type = new_node(CHAR_,-1);
                            $$.loc = curr_table->gentemp(CHAR_);
                            char *arg1 = new char[10];
                            sprintf(arg1,"'%c'",$1);
                            char *res = strdup((($$.loc)->name).c_str());
                            fields_quad x(arg1,0,res,ASSIGN,0,0,$$.loc);
                            quad_array->emit(x);
                        } 
                        | STRING_LITERAL{
                            char* temp = $1;
                            int count = 0;
                            for(int i=0;temp[i]!='\0';i++) count++;
                            count-=2;
                            $$.val.str_data = $1;
                            $$.ind=2;
                            $$.type = new_node(STRING_,count);
                            $$.loc = curr_table->gentemp3(STRING_,count);
                            ($$.loc)->array_ind = 1;
                            ($$.loc)->initial_value = temp;
                            char *arg1 = new char[10];
                            //sprintf(arg1,"%s",$1);
                            arg1 = temp;
                            char *res = strdup((($$.loc)->name).c_str());
                            fields_quad x(arg1,0,res,ASSIGN,0,0,$$.loc);
                            quad_array->emit(x); 
                            // cout<<($$.loc)->array_ind<<" "<<($$.loc)->name<<endl;
                        } 
                        | OPEN_BRACKET expression CLOSE_BRACKET{
                            $$ = $2;
                        } ;

    postfix_expression : 
                        primary_expression {$$ = $1;}
                        | postfix_expression OPEN_SQUARE_BRACKET expression CLOSE_SQUARE_BRACKET{
                            // cout<<"Testing..."<<endl;
                            $$.array = $1.array;
                            $$.type = $1.type;
                            // cout<<"Testing..."<<endl;
                            switch($1.type->down){
			                    case ARRAY : 
                                    switch($1.type->up){
                                        case INT_ : $$.type->down = INT_ ;break;
                                        case CHAR_ : $$.type->down = CHAR_ ;break;
                                    }
                                    break;
                            }
                            // cout<<"Testing..."<<endl;
                            // cout<<($1.type->down)<<endl;
                            if(!($1.loc1)){
                                // cout<<"Testing"<<endl;
                                $$.loc1 = curr_table->gentemp(INT_);
                                // int m = compute_width($1.type);
                                // int m = 1;
                                char *arg1 = strdup((($3.loc)->name).c_str());
                                // char *arg2 = new char[10];
                                // sprintf(arg2,"%d",m);
                                
                                char *res = strdup((($$.loc1)->name).c_str());
                                // cout<<arg1<<" "<<arg2<<" "<<res<<endl;
                                //t0 0 t1
                                fields_quad y(arg1,0,res,ASSIGN,$3.loc,0,$$.loc1);
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
                        | postfix_expression OPEN_BRACKET CLOSE_BRACKET{
                            int count = 0;
                            symbol_table_record *t = global_table->lookup((($1.loc)->name));
                            // if(t->nested_table==nullptr){
                            //     cout<<"Semantic Error..."<<endl;
                            //     exit(0);
                            // }
                            // string ss = curr_table->gentemp2(t->type[(t->type).size()-1]);
                            // string ss = t->type[(t->type).size()-1];
                            $$.loc = curr_table->gentemp2(t->type[(t->type).size()-1]);
                            char *res = strdup((($$.loc)->name).c_str());
                            char *arg1 = strdup((($1.loc)->name).c_str());
                            char *arg2 = new char[10];
                            sprintf(arg2,"%d",count);
                            fields_quad x(arg1,arg2,res,call,$1.loc,0,$$.loc);
                            quad_array->emit(x);

                            date_types dt;
                            string ss = ($$.loc)->type[0];
                            if((($$.loc)->type).size()>1){
                                dt = FUNCTION;
                                $$.type = new_node(dt,-1);
                            }
                            else if(((($$.loc)->size)>1 && ss.compare("CHAR")==0) || ((($$.loc)->size)>4 && ss.compare("INT")==0)){
                                dt = ARRAY;
                                $$.type = new_node(dt,($$.loc)->size);
                            }
                            else{
                                if(ss.compare("INT")==0) dt = INT_ ;
                                else if(ss.compare("CHAR")==0) dt = CHAR_ ;
                                else if(ss.compare("INT*")==0) dt = INT_PTR ;
                                else if(ss.compare("CHAR*")==0) dt = CHAR_PTR ;
                                else if(ss.compare("VOID*")==0) dt = PTR ;
                                $$.type = new_node(dt,-1);
                            }
                            
                        }
                        | postfix_expression OPEN_BRACKET argument_expression_list CLOSE_BRACKET{
                            // cout<<"Testing..."<<endl;
                            parameter_list *temp = $3;
                            symbol_table_record *t = global_table->lookup(($1.loc)->name);
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
                            $$.loc = curr_table->gentemp2(t->type[(t->type).size()-1]);
                            char *res = strdup((($$.loc)->name).c_str());
                            char *arg1 = strdup((($1.loc)->name).c_str());
                            char *arg2 = new char[10];
                            sprintf(arg2,"%d",count);
                            fields_quad x(arg1,arg2,res,call,$1.loc,0,$$.loc);
                            quad_array->emit(x);

                            date_types dt;
                            if(ss.compare("INT")==0) dt = INT_ ;
                            else if(ss.compare("CHAR")==0) dt = CHAR_ ;
                            else if(ss.compare("INT*")==0) dt = INT_PTR ;
                            else if(ss.compare("CHAR*")==0) dt = CHAR_PTR ;
                            else if(ss.compare("VOID*")==0) dt = PTR ;

                            $$.type = new_node(dt,-1);
                        }
                        | postfix_expression POINTER_INDIRECTION IDENTIFIER{
                            // not to be implemented
                        } ;

    argument_expression_list :
                        assignment_expression{
                            $$ = make_param_list($1.loc);
                        }
                        | argument_expression_list COMMA assignment_expression{
                            $$ = merge_param_list($1,make_param_list($3.loc));
                        } ;

    unary_expression :
                        postfix_expression {
                            $$ = $1;
                            $$ = $1;
                            // cout<<"unary_expression "<<address_ind<<endl;
                            if($1.loc1 && (address_ind == 0)){
                                $$.loc = curr_table->gentemp(($1.type)->down);
                                char *arg1 = strdup((($1.array)->name).c_str());
                                char *arg2 = strdup((($1.loc1)->name).c_str());
                                char *res = strdup((($$.loc)->name).c_str());
                                fields_quad x(arg1,arg2,res,EQ_BRACKET,$1.loc,$1.loc1,$$.loc);
                                quad_array->emit(x);
                            }
                        }
                        | unary_operator O unary_expression{
                            // cout<<"Testing * operator"<<endl;
                            switch($1){
                                case U_ADDR :  
                                    if($3.loc1 && ($3.type->up) == INT_){
                                        if($3.loc1 && (address_ind == 1)){
                                            $$.loc = curr_table->gentemp2("INT*");
                                            date_types dt = INT_PTR;
                                            $$.type = new_node(dt,-1);
                                            $$.type->down = INT_PTR;
                                            char *arg1 = strdup((($3.loc)->name).c_str());
                                            char *arg2 = strdup((($3.loc1)->name).c_str());
                                            char *res = strdup((($$.loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,EQ_ADDR_BRACKET,$3.loc,$3.loc1,$$.loc);
                                            quad_array->emit(x);
                                            address_ind = 0;
                                        }
                                        else{
                                            $$.loc = curr_table->gentemp2("INT*");
                                            date_types dt = INT_PTR;
                                            $$.type = new_node(dt,-1);
                                            $$.type->down = INT_PTR;
                                            char *arg1 = strdup((($3.loc)->name).c_str());
                                            char *arg2 = strdup((($3.loc1)->name).c_str());
                                            char *res = strdup((($$.loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,ADDR_BRACKET_EQ,$3.loc,$3.loc1,$$.loc);
                                            quad_array->emit(x);
                                            address_ind = 0;
                                        }
                                        // cout<<($2.loc)->name<<endl;
                                    }
                                    else if($3.loc1 && (($3.type->up) == CHAR_ || ($3.type->down) == CHAR_)){
                                        if($3.loc1 && (address_ind == 1)){
                                            $$.loc = curr_table->gentemp2("CHAR*");
                                            date_types dt = CHAR_PTR;
                                            $$.type = new_node(dt,-1);
                                            $$.type->down = CHAR_PTR;
                                            char *arg1 = strdup((($3.loc)->name).c_str());
                                            char *arg2 = strdup((($3.loc1)->name).c_str());
                                            char *res = strdup((($$.loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,EQ_ADDR_BRACKET,$3.loc,$3.loc1,$$.loc);
                                            quad_array->emit(x);
                                            address_ind = 0;
                                        }
                                        else{
                                            $$.loc = curr_table->gentemp2("CHAR*");
                                            date_types dt = CHAR_PTR;
                                            $$.type = new_node(dt,-1);
                                            $$.type->down = CHAR_PTR;
                                            char *arg1 = strdup((($3.loc)->name).c_str());
                                            char *arg2 = strdup((($3.loc1)->name).c_str());
                                            char *res = strdup((($$.loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,ADDR_BRACKET_EQ,$3.loc,$3.loc1,$$.loc);
                                            quad_array->emit(x);
                                            address_ind = 0;
                                        }
                                    }
                                    else if(($3.type->down) == INT_){
                                        if($3.loc1 && (address_ind == 1)){
                                            $$.loc = curr_table->gentemp2("INT*");
                                            date_types dt = INT_PTR;
                                            $$.type = new_node(dt,-1);
                                            $$.type->down = INT_PTR;
                                            char *arg1 = strdup((($3.loc)->name).c_str());
                                            char *arg2 = strdup((($3.loc1)->name).c_str());
                                            char *res = strdup((($$.loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,EQ_ADDR_BRACKET,$3.loc,$3.loc1,$$.loc);
                                            quad_array->emit(x);
                                            address_ind = 0;
                                        }
                                        else{
                                            $$.loc = curr_table->gentemp2("INT*");
                                            date_types dt = INT_PTR;
                                            $$.type = new_node(dt,-1);
                                            $$.type->down = INT_PTR;
                                            char *arg1 = strdup((($3.loc)->name).c_str());
                                            char *res = strdup((($$.loc)->name).c_str());
                                            fields_quad x(arg1,0,res,$1,$3.loc,0,$$.loc);
                                            quad_array->emit(x);
                                            address_ind = 0;
                                        }
                                        // cout<<($2.loc)->name<<endl;
                                    }
                                    else if(($3.type->down) == CHAR_){
                                        if($3.loc1 && (address_ind == 1)){
                                            $$.loc = curr_table->gentemp2("CHAR*");
                                            date_types dt = CHAR_PTR;
                                            $$.type = new_node(dt,-1);
                                            $$.type->down = CHAR_PTR;
                                            char *arg1 = strdup((($3.loc)->name).c_str());
                                            char *arg2 = strdup((($3.loc1)->name).c_str());
                                            char *res = strdup((($$.loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,EQ_ADDR_BRACKET,$3.loc,$3.loc1,$$.loc);
                                            quad_array->emit(x);
                                            address_ind = 0;
                                        }
                                        else{
                                            $$.loc = curr_table->gentemp2("CHAR*");
                                            date_types dt = CHAR_PTR;
                                            $$.type = new_node(dt,-1);
                                            $$.type->down = CHAR_PTR;
                                            char *arg1 = strdup((($3.loc)->name).c_str());
                                            char *res = strdup((($$.loc)->name).c_str());
                                            fields_quad x(arg1,0,res,$1,$3.loc,0,$$.loc);
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
                                    if(($3.type->down == ARRAY) && ($3.type->up == INT_PTR)){
                                        $$ = $3;
                                        $$.pointer_ind = 1;
                                        date_types dt = INT_;
                                        $$.type = new_node(dt,-1);
                                        $$.type->down = INT_;
                                    }
                                    else if(($3.type->down == ARRAY) && ($3.type->up == CHAR_PTR)){
                                        $$ = $3;
                                        $$.pointer_ind = 1;
                                        date_types dt = CHAR_;
                                        $$.type = new_node(dt,-1);
                                        $$.type->down = CHAR_;
                                    }
                                    else if(($3.type->down) == INT_PTR){
                                        // $$.loc = curr_table->gentemp2("INT");
                                        // date_types dt = INT_;
                                        // $$.type = new_node(dt,-1);
                                        // $$.type->down = INT_;
                                        // char *arg1 = strdup((($2.loc)->name).c_str());
                                        // char *res = strdup((($$.loc)->name).c_str());
                                        // fields_quad x(arg1,0,res,$1,$2.loc,0,$$.loc);
                                        // quad_array->emit(x);
                                        $$ = $3;
                                        $$.pointer_ind = 1;
                                        date_types dt = INT_;
                                        $$.type = new_node(dt,-1);
                                        $$.type->down = INT_;
                                    }
                                    else if(($3.type->down) == CHAR_PTR){
                                        // $$.loc = curr_table->gentemp2("CHAR");
                                        // date_types dt = CHAR_;
                                        // $$.type = new_node(dt,-1);
                                        // $$.type->down = CHAR_;
                                        // char *arg1 = strdup((($2.loc)->name).c_str());
                                        // char *res = strdup((($$.loc)->name).c_str());
                                        // fields_quad x(arg1,0,res,$1,$2.loc,0,$$.loc);
                                        // quad_array->emit(x);
                                        $$ = $3;
                                        $$.pointer_ind = 1;
                                        date_types dt = CHAR_;
                                        $$.type = new_node(dt,-1);
                                        $$.type->down = CHAR_;
                                    }
                                    else{
                                        char semantic[20]="Semantic Error!\n";
                                        cout<<"Semantic Error71!"<<endl;
                                        yyerror(semantic);
                                    }
                                    break;
                                default : 
                                    $$.loc = curr_table->gentemp(($3.type)->down);
                                    char *arg1 = strdup((($3.loc)->name).c_str());
                                    char *res = strdup((($$.loc)->name).c_str());
                                    fields_quad x(arg1,0,res,$1,$3.loc,0,$$.loc);
                                    quad_array->emit(x);
                                    $$.type = $3.type;
                            }
                        } ;

    unary_operator :
                        AND { $$ = U_ADDR; }
                        | MULT { $$ = U_STAR; }
                        | ADD { $$ = U_PLUS; }
                        | SUB { $$ = U_MINUS; }
                        | NOT { $$ = BW_U_NOT; } ;

    multiplicative_expression :
                        unary_expression {
                            if($1.pointer_ind == 1 && $1.loc1  && ($1.type->down) == INT_){
                                symbol_table_record* y = curr_table->gentemp2("INT*");
                                
                                char *arg1 = strdup((($1.loc)->name).c_str());
                                char *arg2 = strdup((($1.loc1)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,arg2,res,STAR_EQ_BRACKET,$1.loc,$1.loc1,y);
                                quad_array->emit(x);

                                date_types dt = INT_;
                                $1.type = new_node(dt,-1);
                                $1.type->down = INT_;
                                $1.loc = y;
                            }
                            else if($1.pointer_ind == 1 && $1.loc1  && ($1.type->down) == CHAR_){
                                symbol_table_record* y = curr_table->gentemp2("CHAR*");
                                
                                char *arg1 = strdup((($1.loc)->name).c_str());
                                char *arg2 = strdup((($1.loc1)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,arg2,res,STAR_EQ_BRACKET,$1.loc,$1.loc1,y);
                                quad_array->emit(x);

                                date_types dt = CHAR_;
                                $1.type = new_node(dt,-1);
                                $1.type->down = CHAR_;
                                $1.loc = y;
                            }
                            else if($1.pointer_ind == 1 && ($1.type->down) == INT_){
                                symbol_table_record* y = curr_table->gentemp2("INT*");
                                
                                char *arg1 = strdup((($1.loc)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,0,res,U_STAR,$1.loc,0,y);
                                quad_array->emit(x);

                                date_types dt = INT_;
                                $1.type = new_node(dt,-1);
                                $1.type->down = INT_;
                                $1.loc = y;
                            }
                            else if($1.pointer_ind == 1 && ($1.type->down) == CHAR_){
                                symbol_table_record* y = curr_table->gentemp2("CHAR*");
                                
                                char *arg1 = strdup((($1.loc)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,0,res,U_STAR,$1.loc,0,y);
                                quad_array->emit(x);

                                date_types dt = CHAR_;
                                $1.type = new_node(dt,-1);
                                $1.type->down = CHAR_;
                                $1.loc = y;
                            }
                            $$ = $1;
                        }
                        | multiplicative_expression MULT unary_expression{
                            if($3.pointer_ind == 1 && $3.loc1  && ($3.type->down) == INT_){
                                symbol_table_record* y = curr_table->gentemp2("INT*");
                                
                                char *arg1 = strdup((($3.loc)->name).c_str());
                                char *arg2 = strdup((($3.loc1)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,arg2,res,STAR_EQ_BRACKET,$3.loc,$3.loc1,y);
                                quad_array->emit(x);

                                date_types dt = INT_;
                                $3.type = new_node(dt,-1);
                                $3.type->down = INT_;
                                $3.loc = y;
                            }
                            else if($3.pointer_ind == 1 && $3.loc1  && ($3.type->down) == CHAR_){
                                symbol_table_record* y = curr_table->gentemp2("CHAR*");
                                
                                char *arg1 = strdup((($3.loc)->name).c_str());
                                char *arg2 = strdup((($3.loc1)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,arg2,res,STAR_EQ_BRACKET,$3.loc,$3.loc1,y);
                                quad_array->emit(x);

                                date_types dt = CHAR_;
                                $3.type = new_node(dt,-1);
                                $3.type->down = CHAR_;
                                $3.loc = y;
                            }
                            else if($3.pointer_ind == 1 && ($3.type->down) == INT_){
                                symbol_table_record* y = curr_table->gentemp2("INT*");
                                
                                char *arg1 = strdup((($3.loc)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,0,res,U_STAR,$3.loc,0,y);
                                quad_array->emit(x);

                                date_types dt = INT_;
                                $3.type = new_node(dt,-1);
                                $3.type->down = INT_;
                                $3.loc = y;
                            }
                            else if($3.pointer_ind == 1 && ($3.type->down) == CHAR_){
                                symbol_table_record* y = curr_table->gentemp2("CHAR*");
                                
                                char *arg1 = strdup((($3.loc)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,0,res,U_STAR,$3.loc,0,y);
                                quad_array->emit(x);

                                date_types dt = CHAR_;
                                $3.type = new_node(dt,-1);
                                $3.type->down = CHAR_;
                                $3.loc = y;
                            }
                            



                            if(typecheck($1.type, $3.type)){
						  		$$.loc = curr_table->gentemp(($1.type)->down);
						  		char *arg1 = strdup((($1.loc)->name).c_str());
						  		char *arg2 = strdup((($3.loc)->name).c_str());
						  		char *res = strdup((($$.loc)->name).c_str());
						  		fields_quad x(arg1,arg2,res,INTO,$1.loc,$3.loc,$$.loc);
						  		quad_array->emit(x);
						  		$$.type = $1.type;
						  	}
                            else{
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error2!\n";
                                yyerror(semantic);
                            }
                        }
                        | multiplicative_expression DIVIDE unary_expression{

                            
                            if($3.pointer_ind == 1 && $3.loc1  && ($3.type->down) == INT_){
                                symbol_table_record* y = curr_table->gentemp2("INT*");
                                
                                char *arg1 = strdup((($3.loc)->name).c_str());
                                char *arg2 = strdup((($3.loc1)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,arg2,res,STAR_EQ_BRACKET,$3.loc,$3.loc1,y);
                                quad_array->emit(x);

                                date_types dt = INT_;
                                $3.type = new_node(dt,-1);
                                $3.type->down = INT_;
                                $3.loc = y;
                            }
                            else if($3.pointer_ind == 1 && $3.loc1  && ($3.type->down) == CHAR_){
                                symbol_table_record* y = curr_table->gentemp2("CHAR*");
                                
                                char *arg1 = strdup((($3.loc)->name).c_str());
                                char *arg2 = strdup((($3.loc1)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,arg2,res,STAR_EQ_BRACKET,$3.loc,$3.loc1,y);
                                quad_array->emit(x);

                                date_types dt = CHAR_;
                                $3.type = new_node(dt,-1);
                                $3.type->down = CHAR_;
                                $3.loc = y;
                            }
                            else if($3.pointer_ind == 1 && ($3.type->down) == INT_){
                                symbol_table_record* y = curr_table->gentemp2("INT*");
                                
                                char *arg1 = strdup((($3.loc)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,0,res,U_STAR,$3.loc,0,y);
                                quad_array->emit(x);

                                date_types dt = INT_;
                                $3.type = new_node(dt,-1);
                                $3.type->down = INT_;
                                $3.loc = y;
                            }
                            else if($3.pointer_ind == 1 && ($3.type->down) == CHAR_){
                                symbol_table_record* y = curr_table->gentemp2("CHAR*");
                                
                                char *arg1 = strdup((($3.loc)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,0,res,U_STAR,$3.loc,0,y);
                                quad_array->emit(x);

                                date_types dt = CHAR_;
                                $3.type = new_node(dt,-1);
                                $3.type->down = CHAR_;
                                $3.loc = y;
                            }

                            if(typecheck($1.type, $3.type)){
						  		$$.loc = curr_table->gentemp(($1.type)->down);
						  		char *arg1 = strdup((($1.loc)->name).c_str());
						  		char *arg2 = strdup((($3.loc)->name).c_str());
						  		char *res = strdup((($$.loc)->name).c_str());
						  		fields_quad x(arg1,arg2,res,DIV,$1.loc,$3.loc,$$.loc);
						  		quad_array->emit(x);
						  		$$.type = $1.type;
						  	}
                            else{
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error3!\n";
                                yyerror(semantic);
                            }
                        }
                        | multiplicative_expression REMAINDER unary_expression{

                            if($3.pointer_ind == 1 && $3.loc1  && ($3.type->down) == INT_){
                                symbol_table_record* y = curr_table->gentemp2("INT*");
                                
                                char *arg1 = strdup((($3.loc)->name).c_str());
                                char *arg2 = strdup((($3.loc1)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,arg2,res,STAR_EQ_BRACKET,$3.loc,$3.loc1,y);
                                quad_array->emit(x);

                                date_types dt = INT_;
                                $3.type = new_node(dt,-1);
                                $3.type->down = INT_;
                                $3.loc = y;
                            }
                            else if($3.pointer_ind == 1 && $3.loc1  && ($3.type->down) == CHAR_){
                                symbol_table_record* y = curr_table->gentemp2("CHAR*");
                                
                                char *arg1 = strdup((($3.loc)->name).c_str());
                                char *arg2 = strdup((($3.loc1)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,arg2,res,STAR_EQ_BRACKET,$3.loc,$3.loc1,y);
                                quad_array->emit(x);

                                date_types dt = CHAR_;
                                $3.type = new_node(dt,-1);
                                $3.type->down = CHAR_;
                                $3.loc = y;
                            }
                            else if($3.pointer_ind == 1 && ($3.type->down) == INT_){
                                symbol_table_record* y = curr_table->gentemp2("INT*");
                                
                                char *arg1 = strdup((($3.loc)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,0,res,U_STAR,$3.loc,0,y);
                                quad_array->emit(x);

                                date_types dt = INT_;
                                $3.type = new_node(dt,-1);
                                $3.type->down = INT_;
                                $3.loc = y;
                            }
                            else if($3.pointer_ind == 1 && ($3.type->down) == CHAR_){
                                symbol_table_record* y = curr_table->gentemp2("CHAR*");
                                
                                char *arg1 = strdup((($3.loc)->name).c_str());
                                char *res = strdup((y->name).c_str());
                                fields_quad x(arg1,0,res,U_STAR,$3.loc,0,y);
                                quad_array->emit(x);

                                date_types dt = CHAR_;
                                $3.type = new_node(dt,-1);
                                $3.type->down = CHAR_;
                                $3.loc = y;
                            }

                            if(typecheck($1.type, $3.type)){
						  		$$.loc = curr_table->gentemp(($1.type)->down);
						  		char *arg1 = strdup((($1.loc)->name).c_str());
						  		char *arg2 = strdup((($3.loc)->name).c_str());
						  		char *res = strdup((($$.loc)->name).c_str());
						  		fields_quad x(arg1,arg2,res,PERCENT,$1.loc,$3.loc,$$.loc);
						  		quad_array->emit(x);
						  		$$.type = $1.type;
						  	}
                            else{
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error4!\n";
                                yyerror(semantic);
                            }
                        } ;

    additive_expression :
                        multiplicative_expression {$$ = $1;}
                        | additive_expression ADD multiplicative_expression{
                            if(typecheck($1.type, $3.type)){
                                $$.loc = curr_table->gentemp(($1.type)->down);
                                char *arg1 = strdup((($1.loc)->name).c_str());
                                char *arg2 = strdup((($3.loc)->name).c_str());
                                char *res = strdup((($$.loc)->name).c_str());
                                fields_quad x(arg1,arg2,res,PLUS,$1.loc,$3.loc,$$.loc);
                                quad_array->emit(x);
                                $$.type = $1.type;
                            }
                            else{
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error5!\n";
                                yyerror(semantic);
                            }
                        }
                        | additive_expression SUB multiplicative_expression{
                            if(typecheck($1.type, $3.type)){
                                $$.loc = curr_table->gentemp(($1.type)->down);
                                char *arg1 = strdup((($1.loc)->name).c_str());
                                char *arg2 = strdup((($3.loc)->name).c_str());
                                char *res = strdup((($$.loc)->name).c_str());
                                fields_quad x(arg1,arg2,res,MINUS,$1.loc,$3.loc,$$.loc);
                                quad_array->emit(x);
                                $$.type = $1.type;
                            }
                            else{
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error6!\n";
                                yyerror(semantic);
                            }
                        } ;

    relational_expression :
                        additive_expression {$$ = $1;}
                        | relational_expression LESS_THAN additive_expression{
                            $$.TL = makelist(next_instr);
                            char *arg1 = strdup((($1.loc)->name).c_str());
                            char *arg2 = strdup((($3.loc)->name).c_str());
                            fields_quad x(arg1,arg2,0,goto_LT,$1.loc,$3.loc,0);
                            quad_array->emit(x);
                            $$.FL = makelist(next_instr);
                            fields_quad y(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(y);
                            $$.type = new_node(BOOL_,-1);
                        }
                        | relational_expression GREATER_THAN additive_expression{
                            $$.TL = makelist(next_instr);
                            char *arg1 = strdup((($1.loc)->name).c_str());
                            char *arg2 = strdup((($3.loc)->name).c_str());
                            fields_quad x(arg1,arg2,0,goto_GT,$1.loc,$3.loc,0);
                            quad_array->emit(x);
                            $$.FL = makelist(next_instr);
                            fields_quad y(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(y);
                            $$.type = new_node(BOOL_,-1);
                        }
                        | relational_expression LESS_THAN_OR_EQUAL additive_expression{
                            $$.TL = makelist(next_instr);
                            char *arg1 = strdup((($1.loc)->name).c_str());
                            char *arg2 = strdup((($3.loc)->name).c_str());
                            fields_quad x(arg1,arg2,0,goto_LTE,$1.loc,$3.loc,0);
                            quad_array->emit(x);
                            $$.FL = makelist(next_instr);
                            fields_quad y(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(y);
                            $$.type = new_node(BOOL_,-1);
                        }
                        | relational_expression GREATER_THAN_OR_EQUAL additive_expression{
                            $$.TL = makelist(next_instr);
                            char *arg1 = strdup((($1.loc)->name).c_str());
                            char *arg2 = strdup((($3.loc)->name).c_str());
                            fields_quad x(arg1,arg2,0,goto_GTE,$1.loc,$3.loc,0);
                            quad_array->emit(x);
                            $$.FL = makelist(next_instr);
                            fields_quad y(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(y);
                            $$.type = new_node(BOOL_,-1);
                        } ;

    equality_expression :
                        relational_expression {$$ = $1;}
                        | equality_expression EQUAL_TO relational_expression{
                            $$.TL = makelist(next_instr);
                            char* arg1 = strdup((($1.loc)->name).c_str());
                            char* arg2 = strdup((($3.loc)->name).c_str());
                            fields_quad x(arg1,arg2,0,goto_EQ,$1.loc,$3.loc,0);
                            quad_array->emit(x);
                            $$.FL = makelist(next_instr);
                            fields_quad y(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(y);
                            $$.type = new_node(BOOL_,-1);
                        } 
                        | equality_expression NOT_EQUAL_TO relational_expression{
                            $$.TL = makelist(next_instr);
                            char* arg1 = strdup((($1.loc)->name).c_str());
                            char* arg2 = strdup((($3.loc)->name).c_str());
                            fields_quad x(arg1,arg2,0,goto_NEQ,$1.loc,$3.loc,0);
                            quad_array->emit(x);
                            $$.FL = makelist(next_instr);
                            fields_quad y(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(y);
                            $$.type = new_node(BOOL_,-1);
                        } ;

    logical_AND_expression :
                        equality_expression {$$ = $1;}
                        | logical_AND_expression LOGICAL_AND M equality_expression{
                            backpatch($1.TL,$3);
                            $$.FL = merge($1.FL,$4.FL);
                            $$.TL = $4.TL;
                            $$.type = new_node(BOOL_,-1);
                        } ;
                    
    logical_OR_expression :
                        logical_AND_expression {$$ = $1;} 
                        | logical_OR_expression LOGICAL_OR M logical_AND_expression{
                            backpatch($1.FL,$3);
                            $$.TL = merge($1.TL,$4.TL);
                            $$.FL = $4.FL;
                            $$.type = new_node(BOOL_,-1);         
                        } ;
                
    conditional_expression :
                        logical_OR_expression {$$ = $1;}
                        | logical_OR_expression N QUESTION_MARK M expression N COLON M conditional_expression {
                            $$.loc = curr_table->gentemp(($5.type)->down);
                            $$.type = $5.type;
                            char *res = strdup((($$.loc)->name).c_str());
                            char *arg1 = strdup((($9.loc)->name).c_str());
                            fields_quad x(arg1,0,res,ASSIGN,$9.loc,0,$$.loc);
                            quad_array->emit(x);
                            lnode *l = makelist(next_instr);
                            fields_quad y(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(y);
                            backpatch($6,next_instr);
                            res = strdup((($$.loc)->name).c_str());
                            arg1 = strdup((($5.loc)->name).c_str());
                            fields_quad z(arg1,0,res,ASSIGN,$5.loc,0,$$.loc);
                            quad_array->emit(z);
                            l = merge(l,makelist(next_instr));
                            fields_quad a(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(a);
                            backpatch($2,next_instr);
                            conv2Bool(&$1);
                            backpatch($1.TL,$4);
                            backpatch($1.FL,$8);
                            backpatch(l,next_instr);
                        };

    assignment_expression :
                        conditional_expression {$$ = $1;}
                        | unary_expression EQUAL assignment_expression{

                            if($1.pointer_ind == 1){
                                if(typecheck($1.type, $3.type)){
                                    if($1.loc1){
                                        //printf("%s\n",($1.loc)->name);
                                        // cout<<"First case"<<endl;

                                        symbol_table_record* y;

                                        if(($1.type->down) == INT_){
                                            // cout<<"Integer pointer"<<endl;
                                            // y = curr_table->gentemp2("INT*");
                                
                                            char *arg1 = strdup((($1.array)->name).c_str());
                                            char *arg2 = strdup((($1.loc1)->name).c_str());
                                            char *res = strdup((($3.loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,STAR_BRACKET_EQ,$1.loc,$1.loc1,$3.loc);
                                            quad_array->emit(x);

                                        }
                                        else if(($1.type->down) == CHAR_){
                                            // cout<<"Character pointer"<<endl;
                                            // y = curr_table->gentemp2("CHAR*");
                                
                                            char *arg1 = strdup((($1.array)->name).c_str());
                                            char *arg2 = strdup((($1.loc1)->name).c_str());
                                            char *res = strdup((($3.loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,STAR_BRACKET_EQ,$1.loc,$1.loc1,$3.loc);
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
                                        char *arg1 = strdup((($3.loc)->name).c_str());
                                        char *res = strdup((($1.loc)->name).c_str());
                                        fields_quad x(arg1,0,res,STAR_EQUAL,$3.loc,0,$1.loc);
                                        quad_array->emit(x);
                                    }
                                }
                                else{
                                    char semantic[20]="Semantic Error!\n";
                                    if($1.type == nullptr) cout<<"Testing 1"<<endl;
                                    if($3.type == nullptr) cout<<"Testing 3"<<endl;
                                    switch(($1.type)->down){
                                        case INT_ : cout<<"INT"<<endl; break;
                                        default : cout<<"Testing 1"<<endl;
                                    }
                                    switch(($3.type)->down){
                                        case INT_ : cout<<"INT"<<endl; break;
                                        default : cout<<"Testing 2"<<endl;
                                    }
                                    curr_table->print();
                                    cout<<"Semantic Error47!\n";
                                    yyerror(semantic);
                                }
                            }
                            else{

                                if($1.loc1){
                                   if($1.type->up == $3.type->down){
                                        if($1.loc1){
                                            //printf("%s\n",($1.loc)->name);
                                            // cout<<"First case"<<endl;
                                            char *arg1 = strdup((($1.array)->name).c_str());
                                            char *arg2 = strdup((($1.loc1)->name).c_str());
                                            char *res = strdup((($3.loc)->name).c_str());
                                            fields_quad x(arg1,arg2,res,BRACKET_EQ,$1.loc,$1.loc1,$3.loc);
                                            quad_array->emit(x);
                                        }
                                        else{
                                            // cout<<"Second case"<<endl;
                                            char *arg1 = strdup((($3.loc)->name).c_str());
                                            char *res = strdup((($1.loc)->name).c_str());
                                            fields_quad x(arg1,0,res,ASSIGN,$3.loc,0,$1.loc);
                                            quad_array->emit(x);
                                        }
                                    } 
                                }
                                else if(typecheck($1.type, $3.type)){
                                    if($1.loc1){
                                        //printf("%s\n",($1.loc)->name);
                                        // cout<<"First case"<<endl;
                                        char *arg1 = strdup((($1.array)->name).c_str());
                                        char *arg2 = strdup((($1.loc1)->name).c_str());
                                        char *res = strdup((($3.loc)->name).c_str());
                                        fields_quad x(arg1,arg2,res,BRACKET_EQ,$1.loc,$1.loc1,$3.loc);
                                        quad_array->emit(x);
                                    }
                                    else{
                                        // cout<<"Second case"<<endl;
                                        char *arg1 = strdup((($3.loc)->name).c_str());
                                        char *res = strdup((($1.loc)->name).c_str());
                                        fields_quad x(arg1,0,res,ASSIGN,$3.loc,0,$1.loc);
                                        quad_array->emit(x);
                                    }
                                }
                                else{
                                    char semantic[20]="Semantic Error!\n";
                                    // if($1.type == nullptr) cout<<"Testing 1"<<endl;
                                    // if($3.type == nullptr) cout<<"Testing 3"<<endl;
                                    switch(($1.type)->down){
                                        case INT_ : cout<<"INT"<<endl; break;  
		                                case CHAR_ : cout<<"CHAR"<<endl; break;
		                                case INT_PTR : cout<<"INT*"<<endl; break;
		                                case CHAR_PTR : cout<<"CHAR*"<<endl; break;
		                                case PTR : cout<<"VOID*"<<endl; break;
                                        default : cout<<"Testing 1"<<endl;
                                    }
                                    switch(($3.type)->down){
                                        case INT_ : cout<<"INT"<<endl; break;
                                        default : cout<<"Testing 2"<<endl;
                                    }
                                    global_table->print();
                                    cout<<"Semantic Error7!\n";
                                    yyerror(semantic);
                                }
                            }
                        };

    expression :
                        assignment_expression {$$ = $1;}


/******* Declarations ********/
                      
    internal_declaration : 
                        non_void_type_specifier declarator{
                            $$ = new data_type();
                            if(($2->pointer_indicator)==1) $$->type = ($1->type+"*");
                            else $$->type = $1->type;
                            $$->name = $2->name;
                            $$->array_ind = $2->array_ind;
                            if($2->size==0){
                                if($2->pointer_indicator==1){
                                    $$->size = 4;
                                }
                                else{
                                    $$->size = ($1->size);
                                }
                            }
                            else{
                                if($2->pointer_indicator==1){
                                    $$->size = 4*($2->size);
                                }
                                else{
                                    $$->size = ($1->size)*($2->size);
                                }
                            }
                            $$->value = $2->value;
                            if(($2->type).size()!=0 && ($2->type).compare($$->type)!=0){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error8!\n";
                                yyerror(semantic);
                            }

                            int curr_offset = 0;
                            if(curr_table->curr_size != 0) curr_offset = (curr_table->list[curr_table->curr_size-1]).offset;
                            symbol_table_record* x = new symbol_table_record();
                            x->name = $$->name;
                            x->type.push_back($$->type);
                            // x->initial_value = $$->value;
                            x->size = $$->size;
                            x->offset = curr_offset+$$->size;
                            x->array_ind = $$->array_ind;
                            curr_table->insert(x);
                        }
                        | VOID pointer direct_declarator{
                            $$ = new data_type();
                            $$->type = "VOID*";
                            $$->name = $3->name;
                            $$->array_ind = $3->array_ind;
                            if($3->size==0) $$->size = 4;
                            else $$->size = 4*($3->size);
                            $$->value = $3->value;
                            if(($3->type).size()!=0 && ($3->type).compare("VOID*")!=0){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error9!\n";
                                yyerror(semantic);
                            }

                            int curr_offset = 0;
                            if(curr_table->curr_size != 0) curr_offset = (curr_table->list[curr_table->curr_size-1]).offset;
                            symbol_table_record* x = new symbol_table_record();
                            x->name = $$->name;
                            x->type.push_back($$->type);
                            x->initial_value = $$->value;
                            x->size = $$->size;
                            x->offset = curr_offset+$$->size;
                            x->array_ind = $$->array_ind;
                            curr_table->insert(x);
                        };
                         

    direct_declarator :
                        IDENTIFIER OPEN_SQUARE_BRACKET INTEGER_CONSTANT CLOSE_SQUARE_BRACKET SEMI_COLON {
                            if(curr_table->lookup($1->name) != nullptr){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic error 48"<<endl;
                                yyerror(semantic);
                            }
                            $$ = new data_type();
                            $$->name = $1->name;
                            $$->size = $3; 
                            $$->array_ind = 1;
                        }
                        | IDENTIFIER SEMI_COLON{
                            if(curr_table->lookup($1->name) != nullptr){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic error 49"<<endl;
                                yyerror(semantic);
                            }
                            $$ = new data_type();
                            $$->name = $1->name;
                        }
                        | IDENTIFIER EQUAL initializer SEMI_COLON {
                            if(curr_table->lookup($1->name) != nullptr){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic error 50"<<endl;
                                yyerror(semantic);
                            }
                            // cout<<"Testing direct declarator"<<endl;
                            $$ = new data_type();
                            $$->name = $1->name;
                            $$->type = $3->type;
                            // $$->value = $3->value;
                            // cout<<"Testing"<<endl;
                            char *arg1 = strdup(($3->name).c_str());
                            char *res = strdup(($1->name).c_str());
                            fields_quad x(arg1,0,res,ASSIGN,$3->loc,0,$1->loc);
                            quad_array->emit(x);
                            // cout<<"Testing"<<endl;
                        };
                        
        
    non_void_type_specifier :
                         CHAR{
                            $$ = new data_type();
                            $$->type="CHAR";
                            $$->size=1;
                            }
                        | INT{
                            $$ = new data_type();
                            $$->type="INT";
                            $$->size=4;
                            } ;

    declarator   :      direct_declarator{
                            $$ = new data_type();
                            $$->name = $1->name;
                            $$->size = $1->size;
                            // $$->value = $1->value;
                            $$->array_ind = $1->array_ind;
                        }
                        | pointer direct_declarator{
                            $$ = new data_type();
                            $$->name = $2->name;
                            $$->size = $2->size;
                            $$->pointer_indicator = 1;
                            // $$->value = $2->value;
                            $$->array_ind = $2->array_ind;
                        };
          

    pointer :
                        MULT{
                            $$ = new data_type();
                            $$->type="*";
                        } ;

    parameter_list2 :
                        parameter_declaration2{
                            $$ = new parameter_type();
                            ($$->parameters).push_back($1->type);
                            ($$->names).push_back($1->name);
                        }
                        | parameter_declaration2 COMMA parameter_list2{
                            $$ = new parameter_type();
                            ($$->parameters).push_back($1->type);
                            ($$->names).push_back($1->name);
                            for(int i=0;i<($3->parameters).size();i++){
                                ($$->parameters).push_back(($3->parameters)[i]);
                                ($$->names).push_back(($3->names)[i]);
                            }
                        } ;


    parameter_declaration2 :
                        INT IDENTIFIER{
                            $$ = new data_type();
                            $$->name = $2->name;
                            $$->type="INT";
                        }
                        | CHAR IDENTIFIER{
                            $$ = new data_type();
                            $$->name = $2->name;
                            $$->type="CHAR";
                        }
                        | non_void_type_specifier pointer IDENTIFIER{
                            $$ = new data_type();
                            $$->name = $3->name;
                            $$->type=($1->type+"*");
                        }
                        | VOID pointer IDENTIFIER {
                            $$ = new data_type();
                            $$->name = $3->name;
                            $$->type = "VOID*";
                        };

    initializer :                                                       //Corresponding changes to be done here.
                        assignment_expression {
                            // cout<<"Testing initializer"<<endl;
                            $$ = new data_type();
                            $$->loc = $1.loc;
                            $$->name = $1.loc->name;
                            switch($1.type->down){
                                case INT_ : $$->type = "INT";
                                            break;
                                case CHAR_ : $$->type = "CHAR";
                                            break;
                                case INT_PTR : $$->type = "INT*";
                                            break;
                                case CHAR_PTR : $$->type = "CHAR*";
                                            break;
                                case PTR : $$->type = "VOID*";
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
                        };



/******** Statements ********/


    statement :
                        compound_statement { $$ = $1; }
                        | expression_statement { $$ = $1; } 
                        | selection_statement { $$ = $1; } 
                        | iteration_statement { $$ = $1; }
                        | jump_statement { $$ = $1; } ;

    compound_statement :
                        OPEN_FLOWER_BRACKET CLOSE_FLOWER_BRACKET {}
                        | OPEN_FLOWER_BRACKET block_item_list CLOSE_FLOWER_BRACKET{ $$ = $2; } ;

    block_item_list :
                        block_item{
                            $$ = $1;
                        }
                        | block_item_list M block_item{
                            backpatch($1.NL,$2);
                            $$ = $3;
                        } ;
    
    block_item :
                        internal_declaration{
                            // global_table->print();
                        }                                        
                        | statement {
                            $$ = $1;
                        };

    expression_statement :
                        SEMI_COLON {}
                        | expression SEMI_COLON {
                            $$ = $1;
                        };                         
                    
    selection_statement :
                        IF OPEN_BRACKET expression N CLOSE_BRACKET M statement N ELSE M statement {
                            lnode *l = 0;
                            if(($3.type)->down!=BOOL_){
                                l = makelist(next_instr);
                                fields_quad x(0,0,0,GOTO_,0,0,0);
                                quad_array->emit(x);
                            }
                            backpatch($4,next_instr);
                            conv2Bool(&$3);
                            backpatch($3.TL,$6);
                            backpatch($3.FL,$10);
                            lnode *temp = merge($8,$7.NL);
                            $$.NL = merge(temp,$11.NL);
                            $$.NL = merge($$.NL,l);
                        }
                        | IF OPEN_BRACKET expression N CLOSE_BRACKET M statement N{
                            backpatch($4,next_instr);
                            conv2Bool(&$3);
                            backpatch($3.TL,$6);
                            $$.NL = merge($7.NL,$3.FL);
                        };

    iteration_statement :                                                                  
                        FOR OPEN_BRACKET expression_statement M expression_statement N M expression N CLOSE_BRACKET M statement{
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
                            backpatch($9,$4);
                            lnode *l = makelist(next_instr);
                            fields_quad x(0,0,0,GOTO_,0,0,0);
                            quad_array->emit(x);
                            $12.NL = merge($12.NL,l);
                            backpatch($12.NL,$7);
                            backpatch($6,next_instr);
                            backpatch($5.FL,next_instr);
                            conv2Bool(&$5);
                            backpatch($5.TL,$11);
                            $$.NL = $5.FL;
                        } ;

    jump_statement :
                        RETURN SEMI_COLON{
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
                        | RETURN expression SEMI_COLON{
                            string name = curr_table->name;
                            symbol_table_record *y = global_table->lookup(name);
                            if(y == nullptr){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error 43"<<endl;
                                yyerror(semantic);
                            }
                            if((y->type[(y->type).size()-1]).compare(converter($2.type->down)) != 0 ){
                                char semantic[20]="Semantic Error!\n";
                                cout<<"Semantic Error 44"<<endl;
                                yyerror(semantic);
                            }
                            char *arg1 = strdup((($2.loc)->name).c_str());
                            fields_quad x(arg1,0,0,RETURN_EXP,$2.loc,0,0);
                            quad_array->emit(x);
                            curr_table->return_ind = 1;
                        } ;                                 


/********* Translation Unit *********/

    translation_unit :  
                        function {
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
                        | function translation_unit 
                        ;
                        
    function :
                        internal_declaration{
                            
                        }
                        | VOID pointer IDENTIFIER OPEN_BRACKET CLOSE_BRACKET SEMI_COLON{
                            string s=$3->name;
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
                        | VOID IDENTIFIER OPEN_BRACKET CLOSE_BRACKET SEMI_COLON{
                            string s=$2->name;
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
                        | VOID IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET SEMI_COLON{
                            string s=$2->name;
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
                        | VOID pointer IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET SEMI_COLON{
                            string s=$3->name;
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
                        | VOID IDENTIFIER OPEN_BRACKET parameter_list2 CLOSE_BRACKET SEMI_COLON{
                            string s=$2->name;
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
                            for(int i=0;i<($4->parameters).size();i++) (x->type).push_back(($4->parameters)[i]);
                            (x->type).push_back("VOID");
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        } 
                        | VOID pointer IDENTIFIER OPEN_BRACKET parameter_list2 CLOSE_BRACKET SEMI_COLON{
                            string s=$3->name;
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
                            for(int i=0;i<($5->parameters).size();i++) (x->type).push_back(($5->parameters)[i]);
                            (x->type).push_back("VOID*");
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }  
                        | non_void_type_specifier pointer IDENTIFIER OPEN_BRACKET CLOSE_BRACKET SEMI_COLON{
                            string s=$3->name;
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
                            (x->type).push_back($1->type+"*");
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }
                        | non_void_type_specifier IDENTIFIER OPEN_BRACKET CLOSE_BRACKET SEMI_COLON{
                            string s=$2->name;
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
                            (x->type).push_back($1->type);
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }
                        | non_void_type_specifier IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET SEMI_COLON{
                            string s=$2->name;
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
                            (x->type).push_back($1->type);
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }
                        | non_void_type_specifier pointer IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET SEMI_COLON{
                            string s=$3->name;
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
                            (x->type).push_back($1->type+"*");
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        } 
                        | non_void_type_specifier IDENTIFIER OPEN_BRACKET parameter_list2 CLOSE_BRACKET SEMI_COLON{
                            string s=$2->name;
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
                            for(int i=0;i<($4->parameters).size();i++) (x->type).push_back(($4->parameters)[i]);
                            (x->type).push_back($1->type);
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }  
                        | non_void_type_specifier pointer IDENTIFIER OPEN_BRACKET parameter_list2 CLOSE_BRACKET SEMI_COLON{
                            string s=$3->name;
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
                            for(int i=0;i<($5->parameters).size();i++) (x->type).push_back(($5->parameters)[i]);
                            (x->type).push_back($1->type+"*");
                            x->size = 0;
                            x->offset = 0;
                            global_table->insert(x);
                        }  
                        | function_definition
                        ;
                    
    
    function_definition :  
                        VOID IDENTIFIER OPEN_BRACKET CLOSE_BRACKET {
                            string s=$2->name;
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
                            

                        } compound_statement F
                        | VOID pointer IDENTIFIER OPEN_BRACKET CLOSE_BRACKET {
                            string s=$3->name;
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

                        } compound_statement F 
                        | VOID IDENTIFIER OPEN_BRACKET parameter_list2 CLOSE_BRACKET {
                            // cout<<"Testing function"<<endl;
                            string s=$2->name;
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
                                for(int i=0;i<($4->parameters).size();i++) (x->type).push_back(($4->parameters)[i]);
                                (x->type).push_back("VOID");
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            
                            
                            int curr_offset=0;
                            for(int i=0;i<($4->parameters).size();i++){
                                symbol_table_record* y=new symbol_table_record();
                                if(($4->parameters)[i]=="INT"){
                                    y->name = ($4->names)[i]; 
                                    (y->type).push_back(($4->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y); 
                                }
                                else if(($4->parameters)[i]=="CHAR"){
                                    y->name = ($4->names)[i]; 
                                    (y->type).push_back(($4->parameters)[i]);
                                    y->size = 1; 
                                    y->offset = curr_offset;
                                    curr_offset+=1;
                                    curr_table->insert(y);  
                                }
                                else if(($4->parameters)[i]=="INT*"){
                                    y->name = ($4->names)[i]; 
                                    (y->type).push_back(($4->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y);  
                                }
                                else if(($4->parameters)[i]=="CHAR*"){
                                    y->name = ($4->names)[i]; 
                                    (y->type).push_back(($4->parameters)[i]); 
                                    y->size = 1; 
                                    y->offset = curr_offset;
                                    curr_offset+=1;
                                    curr_table->insert(y);  
                                }
                                else if(($4->parameters)[i]=="VOID*"){
                                    y->name = ($4->names)[i]; 
                                    (y->type).push_back(($4->parameters)[i]);
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

                        } compound_statement F 
                        | VOID pointer IDENTIFIER OPEN_BRACKET parameter_list2 CLOSE_BRACKET {
                            string s=$3->name;
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
                                for(int i=0;i<($5->parameters).size();i++) (x->type).push_back(($5->parameters)[i]);
                                (x->type).push_back("VOID*");
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            

                            int curr_offset=0;
                            for(int i=0;i<($5->parameters).size();i++){
                                symbol_table_record* y=new symbol_table_record();
                                if(($5->parameters)[i]=="INT"){
                                    y->name = ($5->names)[i]; 
                                    (y->type).push_back(($5->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y); 
                                }
                                else if(($5->parameters)[i]=="CHAR"){
                                    y->name = ($5->names)[i]; 
                                    (y->type).push_back(($5->parameters)[i]);
                                    y->size = 1; 
                                    y->offset = curr_offset;
                                    curr_offset+=1;
                                    curr_table->insert(y);  
                                }
                                else if(($5->parameters)[i]=="INT*"){
                                    y->name = ($5->names)[i]; 
                                    (y->type).push_back(($5->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y);  
                                }
                                else if(($5->parameters)[i]=="CHAR*"){
                                    y->name = ($5->names)[i]; 
                                    (y->type).push_back(($5->parameters)[i]);
                                    y->size = 1; 
                                    y->offset = curr_offset;
                                    curr_offset+=1;
                                    curr_table->insert(y);  
                                }
                                else if(($5->parameters)[i]=="VOID*"){
                                    y->name = ($5->names)[i]; 
                                    (y->type).push_back(($5->parameters)[i]);
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

                        } compound_statement F 
                        | VOID IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET {
                            string s=$2->name;
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

                        } compound_statement F 
                        | VOID pointer IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET {
                            string s=$3->name;
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

                        } compound_statement F
                        | non_void_type_specifier IDENTIFIER OPEN_BRACKET CLOSE_BRACKET {
                            // cout<<"Testing..."<<endl;
                            // global_table->print();
                            string s=$2->name;
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
                                (x->type).push_back($1->type);
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            
                            char* t = strdup(s.c_str());
                            fields_quad x(t,0,0,Function,0,0,0);
                            quad_array->emit(x);

                        } compound_statement F 
                        | non_void_type_specifier pointer IDENTIFIER OPEN_BRACKET CLOSE_BRACKET {
                            string s=$3->name;
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
                                (x->type).push_back($1->type+"*");
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            

                            char* t = strdup(s.c_str());
                            fields_quad x(t,0,0,Function,0,0,0);
                            quad_array->emit(x);

                        } compound_statement F 
                        | non_void_type_specifier IDENTIFIER OPEN_BRACKET parameter_list2 CLOSE_BRACKET {
                            string s=$2->name;
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
                                for(int i=0;i<($4->parameters).size();i++) (x->type).push_back(($4->parameters)[i]);
                                (x->type).push_back($1->type);
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            

                            int curr_offset=0;
                            for(int i=0;i<($4->parameters).size();i++){
                                symbol_table_record* y=new symbol_table_record();
                                if(($4->parameters)[i]=="INT"){
                                    y->name = ($4->names)[i]; 
                                    (y->type).push_back(($4->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y); 
                                }
                                else if(($4->parameters)[i]=="CHAR"){
                                    y->name = ($4->names)[i]; 
                                    (y->type).push_back(($4->parameters)[i]);
                                    y->size = 1; 
                                    y->offset = curr_offset;
                                    curr_offset+=1;
                                    curr_table->insert(y);  
                                }
                                else if(($4->parameters)[i]=="INT*"){
                                    y->name = ($4->names)[i]; 
                                    (y->type).push_back(($4->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y);  
                                }
                                else if(($4->parameters)[i]=="CHAR*"){
                                    y->name = ($4->names)[i]; 
                                    (y->type).push_back(($4->parameters)[i]);
                                    y->size = 1; 
                                    y->offset = curr_offset;
                                    curr_offset+=1;
                                    curr_table->insert(y);  
                                }
                                else if(($4->parameters)[i]=="VOID*"){
                                    y->name = ($4->names)[i]; 
                                    (y->type).push_back(($4->parameters)[i]);
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

                        } compound_statement F  
                        | non_void_type_specifier pointer IDENTIFIER OPEN_BRACKET parameter_list2 CLOSE_BRACKET {
                            string s=$3->name;
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
                                for(int i=0;i<($5->parameters).size();i++) (x->type).push_back(($5->parameters)[i]);
                                (x->type).push_back($1->type+"*");
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            
                            
                            int curr_offset=0;
                            for(int i=0;i<($5->parameters).size();i++){
                                symbol_table_record* y=new symbol_table_record();
                                if(($5->parameters)[i]=="INT"){
                                    y->name = ($5->names)[i]; 
                                    (y->type).push_back(($5->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y); 
                                }
                                else if(($5->parameters)[i]=="CHAR"){
                                    y->name = ($5->names)[i]; 
                                    (y->type).push_back(($5->parameters)[i]);
                                    y->size = 1; 
                                    y->offset = curr_offset;
                                    curr_offset+=1;
                                    curr_table->insert(y);  
                                }
                                else if(($5->parameters)[i]=="INT*"){
                                    y->name = ($5->names)[i]; 
                                    (y->type).push_back(($5->parameters)[i]);
                                    y->size = 4; 
                                    y->offset = curr_offset;
                                    curr_offset+=4;
                                    curr_table->insert(y);  
                                }
                                else if(($5->parameters)[i]=="CHAR*"){
                                    y->name = ($5->names)[i]; 
                                    (y->type).push_back(($5->parameters)[i]);
                                    y->size = 1; 
                                    y->offset = curr_offset;
                                    curr_offset+=1;
                                    curr_table->insert(y);  
                                }
                                else if(($5->parameters)[i]=="VOID*"){
                                    y->name = ($5->names)[i]; 
                                    (y->type).push_back(($5->parameters)[i]);
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

                        } compound_statement F 
                        | non_void_type_specifier IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET {
                            string s=$2->name;
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
                                (x->type).push_back($1->type);
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }
                            

                            char* t = strdup(s.c_str());
                            fields_quad x(t,0,0,Function,0,0,0);
                            quad_array->emit(x);

                        } compound_statement F
                        | non_void_type_specifier pointer IDENTIFIER OPEN_BRACKET VOID CLOSE_BRACKET {
                            string s=$3->name;
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
                                (x->type).push_back($1->type+"*");
                                x->size = 0;
                                x->offset = 0;
                                x->nested_table = curr_table;
                                global_table->insert(x);
                            }

                            char* t = strdup(s.c_str());
                            fields_quad x(t,0,0,Function,0,0,0);
                            quad_array->emit(x);

                        } compound_statement F;

    M:
				{
                    //This augmentation is required to store the next instructions in conditional statements.
					$$ = next_instr;
				}
				;

    N:
        {
            //Used to print the goto label for conditional statements.
            $$ = makelist(next_instr);
            fields_quad x(0,0,0,GOTO_,0,0,0);
            quad_array->emit(x);
        }
        ;

    O :
        {
            address_ind = 1;
        }

    F :
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

%%

void yyerror(const char *s) {
    printf("The following error occurred in line number %d : %s\n",yylineno, s);
    exit(1);
}
