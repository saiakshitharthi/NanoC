#ifndef A5_19_TRANSLATOR_INCLUDED
#define A5_19_TRANSLATOR_INCLUDED

#include<bits/stdc++.h>
# define MAX_SIZE 10000

using namespace std;

const unsigned int size_of_char = 1;
const unsigned int size_of_int = 4;
const unsigned int size_of_pointer = 4;
const int local_symbol_table_size = 100;



extern int next_instr,temp_count;

enum quad_data_types {DEFAULT_, PLUS, MINUS, INTO, DIV, PERCENT, U_PLUS, U_MINUS, BW_U_NOT,U_NEGATION, 
				SL, SR, LT, LTE, GT, GTE, EQ, NEQ, BW_AND, BW_XOR, PARAM, RETURN_EXP, RETURN_, Function,
  				BW_INOR, LOG_AND, LOG_OR, goto_LT, goto_LTE, goto_GT, goto_GTE, goto_EQ, goto_NEQ, call,
    			EQ_BRACKET, BRACKET_EQ, U_ADDR, U_STAR, ASSIGN, GOTO_, IF_GOTO, IF_FALSE_GOTO, STAR_EQUAL, STAR_BRACKET_EQ};

enum date_types { ARRAY, PTR, FUNCTION, VOID_, CHAR_, INT_, DOUBLE_, BOOL_, STRING_, INT_PTR, CHAR_PTR};


typedef struct lnode{
    int index_list;
    struct lnode *next;
}lnode;

typedef struct tNode{
	date_types up;
    date_types down;
    int* l;
    struct tNode *r;
}tNode;
extern tNode *t;

class symbol_table;

class symbol_table_record{
    public:
        string name;
        vector<string> type;
        string initial_value;
        int size;
        int offset;
		int array_ind;
        symbol_table *nested_table;
        symbol_table_record();
        void operator=(symbol_table_record &x);
        void print_record();
};

class symbol_table{
    public :
        symbol_table_record *list;
        int size;
		int curr_size; 
        int curr_offset;
		string name;
		int return_ind;

        symbol_table(int capacity);
		symbol_table_record* lookup(string t);
        void insert(symbol_table_record* x);
        symbol_table_record* gentemp(date_types);
		symbol_table_record* gentemp3(date_types,int);
        symbol_table_record* gentemp2(string);
        void print();
};

typedef struct parameter_list{
	symbol_table_record *parameter;
	struct parameter_list *next;
}parameter_list;

typedef struct fields_quad{
	char *arg1;
	char *arg2;
	char *res;
	quad_data_types op;
	symbol_table_record *arg1_loc;
	symbol_table_record *arg2_loc;
	symbol_table_record *res_loc;
	fields_quad(char * = 0, char * = 0, char * = 0, quad_data_types = DEFAULT_, symbol_table_record * = 0, symbol_table_record * = 0, symbol_table_record * = 0);
	~fields_quad();
	void operator=(struct fields_quad &);
	void print_fields_quad(int);
}fields_quad;

class quadArray{
public:
	fields_quad *quad_Table;
	quadArray(unsigned int);
	~quadArray();
	void emit(fields_quad &);
	void print_quadArray();
	void fill_dangling_goto(int,int);
};

typedef union attribute{										
	int int_data;
	double double_data;
	char char_data;
	char* str_data;
}attribute;

typedef struct attribute_expression{                                                
	symbol_table_record *loc;
	lnode *TL;
	lnode *FL;
	lnode *NL;
	tNode *type;
	symbol_table_record *array;
	symbol_table_record *loc1;												
	attribute val;
    int ind;
	int pointer_ind;
}attribute_expression;
	
class data_type{
    public:
        string name;
        string type;
        int pointer_indicator;
        int size;
        string value; //Make sure to convert every value to string.
		symbol_table_record *loc;
		int array_ind;
};

class parameter_type{
    public:
        vector<string> parameters;
        vector<string> names;
};

tNode *new_node(date_types ,int);
tNode *merge_node(tNode *, tNode *);
lnode *makelist(int);
lnode *merge(lnode *, lnode *);
void backpatch(lnode *, int);
int typecheck(tNode *,tNode *);
void conv2Bool(attribute_expression *);
parameter_list *make_param_list(symbol_table_record *);
parameter_list *merge_param_list(parameter_list *, parameter_list *);
int compute_width(tNode *);
string converter(date_types temp);

extern symbol_table *global_table;
extern symbol_table *curr_table;
extern quadArray *quad_array;


#endif