#ifndef A5_19_TRANSLATOR_INCLUDED
#define A5_19_TRANSLATOR_INCLUDED

#include<bits/stdc++.h>
# define MAX_SIZE 10000

using namespace std;

const unsigned int size_of_char = 1;
const unsigned int size_of_int = 4;
const unsigned int size_of_pointer = 4;
const int local_symbol_table_size = 100;


//next_instr contains the next instruction number.
extern int next_instr,temp_count,address_ind;

//These are used for the independent three address code generation.
enum quad_data_types {DEFAULT_, PLUS, MINUS, INTO, DIV, PERCENT, U_PLUS, U_MINUS, BW_U_NOT,U_NEGATION, 
				SL, SR, LT, LTE, GT, GTE, EQ, NEQ, BW_AND, BW_XOR, PARAM, RETURN_EXP, RETURN_, Function,
  				BW_INOR, LOG_AND, LOG_OR, goto_LT, goto_LTE, goto_GT, goto_GTE, goto_EQ, goto_NEQ, call,
    			EQ_BRACKET,EQ_ADDR_BRACKET, BRACKET_EQ, U_ADDR, U_STAR, ASSIGN, GOTO_, IF_GOTO, IF_FALSE_GOTO, STAR_EQUAL, STAR_BRACKET_EQ,STAR_EQ_BRACKET,ADDR_BRACKET_EQ};

//Data types declared for this nano c language
//Bool and string are not data types they are just used for representing the condition of if-else statement and character array.
enum date_types { ARRAY, PTR, FUNCTION, VOID_, CHAR_, INT_, BOOL_, STRING_, INT_PTR, CHAR_PTR};

//Used to store the instruction number.
typedef struct lnode{
    int index_list;
    struct lnode *next;
}lnode;

//Used to store data types.
typedef struct tNode{
	date_types up;
    date_types down;
    int* l;
    struct tNode *r;
}tNode;
extern tNode *t;

//Forward declaration of symbol_table for using it in symbol_table_record.
class symbol_table;

class symbol_table_record{
    public:
        string name;			//Contains the name of the string.
        vector<string> type;	//Contains the data types of the record.
        string initial_value;	//Contains the initial value of the record.
        int size;				//Size of the variable.
        int offset;				//Offset of the variable.
		int array_ind;			// 1 if it the variable is a record otherwise 0.
        symbol_table *nested_table;	//Contains a pointer to the symbol table.
        symbol_table_record();
        void operator=(symbol_table_record &x);	//Used to equate the objects.
        void print_record();	//Prints the symbol table record.
};

class symbol_table{
    public :
        symbol_table_record *list;	//Contains the list of symbol table records.
        int size;					//Capacity of symbol table.
		int curr_size; 				//Current capacity of symbol table.
        int curr_offset;			//Latest offset value.
		string name;				//Name the function
		int return_ind;				//This is an indicator to make sure that the return statement is given properly.

        symbol_table(int capacity);	//Forms a symbol table of size capacity.
		symbol_table_record* lookup(string t);	//Checks whether the variable exists in the table or not.
        void insert(symbol_table_record* x);	//Insertion of a record into the table
        symbol_table_record* gentemp(date_types); //Creates a temparary variable.
		symbol_table_record* gentemp3(date_types,int);
        symbol_table_record* gentemp2(string);
        void print();				//Printing the symbol table.
};

typedef struct parameter_list{
	symbol_table_record *parameter;	//Pointer to the symbol table record.
	struct parameter_list *next;	//Pointer to next parameter.
}parameter_list;

typedef struct fields_quad{
	char *arg1;						//Name of the first operand
	char *arg2;						//Name of the second operand
	char *res;						//Name of the operand where result of the operation will be stored.
	quad_data_types op;				//Operation type.
	symbol_table_record *arg1_loc;	//Pointer to the first operand.
	symbol_table_record *arg2_loc;	//Pointer to the second operand.
	symbol_table_record *res_loc;	//Pointer to the result variable.
	fields_quad(char * = 0, char * = 0, char * = 0, quad_data_types = DEFAULT_, symbol_table_record * = 0, symbol_table_record * = 0, symbol_table_record * = 0);
	~fields_quad();
	void operator=(struct fields_quad &);
	void print_fields_quad(int);	//Printing the record of a quad table.
}fields_quad;

class quadArray{
public:
	fields_quad *quad_Table;		//Contains the three address codes.
	quadArray(unsigned int);
	~quadArray();
	void emit(fields_quad &);		//Stores the three address code into the table.
	void print_quadArray();			//Prints the whole three address codes.
	void fill_dangling_goto(int,int);
};

typedef union attribute{										
	int int_data;					//value for the grammar rules or Identifiers will be stored here.
	double double_data;		
	char char_data;
	char* str_data;
}attribute;

typedef struct attribute_expression{                                                
	symbol_table_record *loc;		//Pointer to the variable location in a symbol table.
	lnode *TL;						//True list - useful for evaluating if-else , for statements.
	lnode *FL;						//False list - same as true list.
	lnode *NL;						//Next list - same as above.
	tNode *type;					//type of the variable.
	symbol_table_record *array;		//Pointer to the location if the variable is an array.
	symbol_table_record *loc1;		//Pointer to the variable t where t is a[t].
	attribute val;					//Value of the grammar rule as which is also an object to a class.
    int ind;						//Indicator shows whether the value is integer or character - only used once to cover some case.
	int pointer_ind;				//Tells whether the variable is of *t type - used few times to resolve some edge cases.
	int addr_ind;
}attribute_expression;
	
class data_type{
    public:
        string name;				//Name of the variable.
        string type;				//Type
        int pointer_indicator;		//Tells whether it is a pointer or not.
        int size;					//Size of the variable or not.
        string value; //Make sure to convert every value to string.
		symbol_table_record *loc;	//Poniter to its location.
		int array_ind;				//Tells whether it is array or not.
};

class parameter_type{
    public:
        vector<string> parameters;	//Contains the parameter types.
        vector<string> names;		//Contains the names of those types.
};

tNode *new_node(date_types ,int);	//Creates a new tNode which stores the data types.
tNode *merge_node(tNode *, tNode *);//Merges two lists - which is required while evaluating the conditional expressions.
lnode *makelist(int);				//Creates a new list.
lnode *merge(lnode *, lnode *);		//Merges two lists of labels.
void backpatch(lnode *, int);		//Backpatches the True list and false list of the conditional statements.
int typecheck(tNode *,tNode *);		//Checks whether the two types are same or not.
void conv2Bool(attribute_expression *);	//Converts into bool value - needed in conditional expressions.
parameter_list *make_param_list(symbol_table_record *);	//Make a list of parameters.
parameter_list *merge_param_list(parameter_list *, parameter_list *);
int compute_width(tNode *);				
string converter(date_types temp);	//Converts the data type in union to its corresponding string.

extern symbol_table *global_table;	//Global symbol table pointer.
extern symbol_table *curr_table;	//Current symbol table pointer.
extern quadArray *quad_array;		//Three address code pointer.


#endif