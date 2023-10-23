#include<bits/stdc++.h>
#include "A5_19_translator.h"
#include "y.tab.h"
using namespace std;


FILE* fptr;
string currentFunction;
symbol_table_record::symbol_table_record(){
    size=0; 
    offset=0;
    nested_table=nullptr;
}

void symbol_table_record::operator=(symbol_table_record &x){
    this->name = x.name;
    this->type = x.type;
    this->initial_value = x.initial_value;
    this->size = x.size;
    this->offset = x.offset;
    this->nested_table = x.nested_table;
	this->array_ind = x.array_ind;
}

void symbol_table_record::print_record(){
    ofstream outputStream;
	outputStream.open("../" + currentFunction + ".txt",ios_base::app);
	outputStream<<name<<"\t";
	if(type.size()==0){
		// outputStream<<"Size is zero"<<endl;
		outputStream<<"undefined"<<"\t";
	}
	else if(type.size()==1) outputStream<<type[0]<<"\t";
	else{
		for(int i=0;i<type.size()-1;i++){
			outputStream<<type[i];
			if(i!=type.size()-2) outputStream<<"^";
			else outputStream<<"->";
		}
		if(type.size()!=0) outputStream<<type[type.size()-1]<<"\t";
	}
	if(initial_value.size()==0) outputStream<<"0\t";
	else outputStream<<initial_value<<"\t";
	outputStream<<size<<"\t"<<offset<<"\t";
	if(nested_table!=nullptr){
		outputStream<<(nested_table)->name<<"\t";
	}
	else outputStream<<"null"<<"\t";
	outputStream<<array_ind<<endl;

}

symbol_table::symbol_table(int capacity){
    list = new symbol_table_record[capacity];
	size = capacity;
	curr_size=0;
}

symbol_table_record* symbol_table::lookup(string t){											
	for(int i = 0;i<curr_size;i++){
		if(t.compare(list[i].name)==0) return (list + i);
	}
	return nullptr;
}

void symbol_table::insert(symbol_table_record* x){												
	if(curr_size == 0)
		x->offset = 0;
	else
		x->offset = list[curr_size-1].size + list[curr_size-1].offset;
	curr_size++;
	*(list+curr_size-1) = *x;
}

symbol_table_record* symbol_table::gentemp(date_types temp){
	string s="t"+to_string(temp_count);
	temp_count++;
	int temp_size = 0;
	symbol_table_record* x = new symbol_table_record();
	switch(temp){
		case INT_ : temp_size = size_of_int; (x->type).push_back("INT"); break;
		case CHAR_ : temp_size = size_of_char; (x->type).push_back("CHAR"); break;
		case INT_PTR : temp_size = size_of_pointer; (x->type).push_back("INT*"); break;
		case CHAR_PTR : temp_size = size_of_pointer; (x->type).push_back("CHAR*"); break;
		case PTR : temp_size = size_of_pointer; (x->type).push_back("VOID*"); break;
	}
	
	x->name = s;
	x->size = temp_size;	
	int curr_offset = 0;
    if(this->curr_size != 0) curr_offset = (this->list[this->curr_size-1]).offset;
	x->offset=curr_offset+temp_size;
	this->insert(x);
	return &((this->list)[curr_size-1]);
}

symbol_table_record* symbol_table::gentemp2(string temp){
	string s="t"+to_string(temp_count);
	temp_count++;
	int temp_size = 0;
	symbol_table_record* x = new symbol_table_record();

	if (temp.compare("INT")==0){
		temp_size = size_of_int; (x->type).push_back("INT");
	}
	else if(temp.compare("CHAR")==0){
		temp_size = size_of_char; (x->type).push_back("CHAR");
	}
	else if(temp.compare("INT*")==0){
		temp_size = size_of_pointer; (x->type).push_back("INT*");
	}
	else if(temp.compare("CHAR*")==0){
		temp_size = size_of_pointer; (x->type).push_back("CHAR*");
	}
	else{
		temp_size = size_of_pointer; (x->type).push_back("VOID*");
	}
	
	x->name = s;
	x->size = temp_size;	
	int curr_offset = 0;
    if(this->curr_size != 0) curr_offset = (this->list[this->curr_size-1]).offset;
	x->offset=curr_offset+temp_size;
	this->insert(x);
	return &((this->list)[curr_size-1]);
}

symbol_table_record* symbol_table::gentemp3(date_types temp,int val){
	string s="t"+to_string(temp_count);
	temp_count++;
	int temp_size = 0;
	symbol_table_record* x = new symbol_table_record();
	switch(temp){
		case INT_ : temp_size = size_of_int; (x->type).push_back("INT"); break;
		case CHAR_ : temp_size = size_of_char; (x->type).push_back("CHAR"); break;
		case INT_PTR : temp_size = size_of_pointer; (x->type).push_back("INT*"); break;
		case CHAR_PTR : temp_size = size_of_pointer; (x->type).push_back("CHAR*"); break;
		case PTR : temp_size = size_of_pointer; (x->type).push_back("VOID*"); break;
		case STRING_ : temp_size = val*size_of_char; x->array_ind=1;(x->type).push_back("CHAR"); break;
	}
	
	x->name = s;
	x->size = temp_size;	
	int curr_offset = 0;
    if(this->curr_size != 0) curr_offset = (this->list[this->curr_size-1]).offset;
	x->offset=curr_offset+temp_size;
	this->insert(x);
	return &((this->list)[curr_size-1]);
}

void symbol_table::print(){
	currentFunction = this->name;
	if((this->name).compare("global")==0){
		currentFunction = "global";
	}
	try{
	for(int i=0;i<curr_size;i++){
		list[i].print_record();
	}
	for(int i=0;i<curr_size;i++){
		if(list[i].nested_table!=nullptr){
			currentFunction = (list[i].nested_table)->name;
			// cout<<"+---------------Symbol Table of "<<(list[i].nested_table)->name<<"---------------+"<<endl;
			(list[i].nested_table)->print();


		}
	}
	}
	catch(int err_code){
		cerr<<err_code<<endl;
	}
}

fields_quad::fields_quad(char *arg1_f, char *arg2_f, char *res_f, quad_data_types op_f, symbol_table_record *arg1_loc_f, symbol_table_record *arg2_loc_f, symbol_table_record *res_loc_f) : arg1(arg1_f), arg2(arg2_f), res(res_f), op(op_f), arg1_loc(arg1_loc_f), arg2_loc(arg2_loc_f), res_loc(res_loc_f) {}

fields_quad::~fields_quad() {}

void fields_quad::operator=(fields_quad &x){
	this->arg1 = x.arg1;
	this->arg2 = x.arg2;
	this->res = x.res;
	this->op = x.op;
	this->arg1_loc = x.arg1_loc;
	this->arg2_loc = x.arg2_loc;
	this->res_loc = x.res_loc;
}

void fields_quad::print_fields_quad(int line){
	if(this->arg2){
		switch(this->op){
			case PLUS : fprintf(fptr,"%3d) %s = %s + %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case MINUS : fprintf(fptr,"%3d) %s = %s - %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case INTO : fprintf(fptr,"%3d) %s = %s * %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case DIV : fprintf(fptr,"%3d) %s = %s / %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case PERCENT : fprintf(fptr,"%3d) %s = %s %% %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case SL : fprintf(fptr,"%3d) %s = %s << %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case SR : fprintf(fptr,"%3d) %s = %s >> %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case LT : fprintf(fptr,"%3d) %s = %s < %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case LTE : fprintf(fptr,"%3d) %s = %s <= %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case GT : fprintf(fptr,"%3d) %s = %s > %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case GTE : fprintf(fptr,"%3d) %s = %s >= %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case EQ : fprintf(fptr,"%3d) %s = %s == %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case NEQ : fprintf(fptr,"%3d) %s = %s != %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case BW_AND : fprintf(fptr,"%3d) %s = %s & %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case BW_XOR : fprintf(fptr,"%3d) %s = %s ^ %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case BW_INOR : fprintf(fptr,"%3d) %s = %s | %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case LOG_AND : fprintf(fptr,"%3d) %s = %s && %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case LOG_OR : fprintf(fptr,"%3d) %s = %s || %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case goto_LT : fprintf(fptr,"%3d) if %s < %s goto %s\n",line,this->arg1,this->arg2,this->res);
						break;
			case goto_LTE : fprintf(fptr,"%3d) if %s <= %s goto %s\n",line,this->arg1,this->arg2,this->res);
						break;
			case goto_GT : fprintf(fptr,"%3d) if %s > %s goto %s\n",line,this->arg1,this->arg2,this->res);
						break;
			case goto_GTE : fprintf(fptr,"%3d) if %s >= %s goto %s\n",line,this->arg1,this->arg2,this->res);
						break;
			case goto_EQ : fprintf(fptr,"%3d) if %s == %s goto %s\n",line,this->arg1,this->arg2,this->res);
						break;
			case goto_NEQ : fprintf(fptr,"%3d) if %s != %s goto %s\n",line,this->arg1,this->arg2,this->res);
						break;
			case call : fprintf(fptr,"%3d) %s = call %s , %s\n",line,this->res,this->arg1,this->arg2);
						break;
			case EQ_BRACKET : fprintf(fptr,"%3d) %s = %s[%s]\n",line,this->res,this->arg1,this->arg2);
						break;
			case BRACKET_EQ : fprintf(fptr,"%3d) %s[%s] = %s\n",line,this->arg1,this->arg2,this->res);
						break;
			case STAR_BRACKET_EQ : fprintf(fptr,"%3d) *%s[%s] = %s\n",line,this->arg1,this->arg2,this->res);
						break;
		}
	}
	else{
		switch(this->op){
			case U_PLUS : fprintf(fptr,"%3d) %s = %s\n",line,this->res,this->arg1);
						break;
			case U_MINUS : fprintf(fptr,"%3d) %s = -%s\n",line,this->res,this->arg1);
						break;
			case BW_U_NOT : fprintf(fptr,"%3d) %s = ~%s\n",line,this->res,this->arg1);
						break;
			case U_NEGATION : fprintf(fptr,"%3d) %s = !%s\n",line,this->res,this->arg1);
						break;
			case U_ADDR : fprintf(fptr,"%3d) %s = &%s\n",line,this->res,this->arg1);
						break;
			case U_STAR : fprintf(fptr,"%3d) %s = *%s\n",line,this->res,this->arg1);
						break;
			case ASSIGN : fprintf(fptr,"%3d) %s = %s\n",line,this->res,this->arg1);
						break;
			case STAR_EQUAL : fprintf(fptr,"%3d) *%s = %s\n",line,this->res,this->arg1);
						break;
			case GOTO_ : fprintf(fptr,"%3d) goto %s\n",line,this->res);
						break;
			case IF_GOTO : fprintf(fptr,"%3d) if %s goto %s\n",line,this->arg1,this->res);
						break;
			case IF_FALSE_GOTO : fprintf(fptr,"%3d) ifFalse %s goto %s\n",line,this->arg1,this->res);
						break;
			case PARAM : fprintf(fptr,"%3d) param %s\n",line,this->arg1);
						break;
			case RETURN_EXP : fprintf(fptr,"%3d) return %s\n",line,this->arg1);
						break;
			case RETURN_ : fprintf(fptr,"%3d) return\n",line);
						break;
			case Function : fprintf(fptr,"%3d) %s : \n",line,arg1);
						break;
		}
	}
}

quadArray::quadArray(unsigned int capacity = MAX_SIZE){
	quad_Table = new fields_quad[capacity];
	next_instr = 0;
}
void quadArray::emit(fields_quad &x){
	quad_Table[next_instr++] = x;
}

void quadArray::print_quadArray(){
	int i;
	for(i = 0;i < next_instr;i++){
		quad_Table[i].print_fields_quad(i);
	}
}

tNode *new_node(date_types t, int val){
	tNode *temp = new tNode;
	temp->down = t;

	if(t == ARRAY || t == STRING_)
		temp->l = new int(val);
	else
		temp->l = 0;

	temp->r = 0;

	return temp;
}
tNode *merge_node(tNode *sub, tNode *one_node){
	if(!sub) return one_node;
	tNode *temp = sub;
	while(temp->r)
		temp = temp->r;
	temp->r = one_node;
	return sub;
}

lnode *makelist(int id){
	lnode *temp = new lnode;
	temp->index_list = id;
	temp->next = 0;
	return temp;
}

lnode *merge(lnode *l1, lnode *l2){
	if(!l1) return l2;
	if(!l2) return l1;
	lnode *temp = l1;
	while(temp->next)
		temp = temp->next;
	temp->next = l2;
	return l1;
}

void quadArray::fill_dangling_goto(int index, int data){
	char *temp = new char[10];
	sprintf(temp,"%d",data);
	((this->quad_Table)[index]).res = temp;
}

void backpatch(lnode *l, int data){
	lnode *temp = l;
	while(temp){
		quad_array->fill_dangling_goto(temp->index_list,data);
		temp = temp->next;
	}
}

void conv2Bool(attribute_expression *E){
	if(((E->type)->down) != BOOL_){
		E->FL = makelist(next_instr);
		char *arg1 = strdup(((E->loc)->name).c_str());
		char *arg2 = new char[10];
		sprintf(arg2,"0");
		fields_quad x(arg1,arg2,0,goto_EQ,E->loc,0,0);
		quad_array->emit(x);
		E->TL = makelist(next_instr);
		fields_quad y(0,0,0,GOTO_,0,0,0);
		quad_array->emit(y);
	}
}

int typecheck(tNode *t1, tNode *t2){
	if(!t1 && !t2) return 1;
	if(!t1) return 0;
	if(!t2) return 0;
	return (t1->down == t2->down) && typecheck(t1->r,t2->r);
}

int compute_width(tNode *temp){
	if(!temp) return 0;
	int width = 1;
	while(temp){
		switch(temp->down){
			case ARRAY : 
						switch(temp->up){
							case INT_ : width *= 4;break;
							case CHAR_ : width *=1;break;
						}
						break;
			case INT_ : width *= 4;
						break;
			case DOUBLE_ : width *= 8;
						break;
			case CHAR_ : width *= 1;
						break;
			case PTR : width *= 4;
						break;
		}
		if(temp->down == PTR)
			break;
		temp = temp->r;
	}
	return width;
}

parameter_list *make_param_list(symbol_table_record *p){
	parameter_list *temp = new parameter_list;
	temp->parameter = p;
	temp->next = 0;
	return temp;
}

parameter_list *merge_param_list(parameter_list *l1, parameter_list *l2){
	if(!l1) return l2;
	if(!l2) return l1;
	parameter_list *temp = l1;
	while(temp->next)
		temp = temp->next;
	temp->next = l2;
	return l1;
}

void __construct_quad_list(int n){
	if(MAX_SIZE>0)
	{
		int quadArrayList[n/2];
	}
	else
	{
		printf("Error: Maximum Size should be greater than 0");
	}
}

void construct_quad_list(int n){
	if(MAX_SIZE>0)
	{
		 __construct_quad_list(n+1);
	}
	else
	{
		printf("Error: Maximum Size should be greater than 0");
	}
}

string converter(date_types temp){
	switch(temp){
		case INT_ : return "INT";
		case CHAR_ : return "CHAR";
		case INT_PTR : return "INT*";
		case CHAR_PTR : return "CHAR*";
		case PTR : return "VOID*";
	}
	return "";
}


symbol_table* global_table;
symbol_table* curr_table;
quadArray *quad_array = 0;
int next_instr = 0;
int temp_count = 0;
tNode *t = 0;

int main(){

	global_table = new symbol_table(10000);
	global_table->name = "global";
	curr_table = global_table;
	construct_quad_list(100);
  	quad_array = new quadArray(100000);
	fptr = fopen("../three_address_input.txt","w");
	
    int val=yyparse();
	if(!val)
		printf("Success: Parsing Done\n");
	else
		printf("Error: Parsing not Done\n");
    printf("+---------------------------------------+\n");
	global_table->print();
	cout<<endl;
	quad_array->print_quadArray();
	fclose(fptr);
	return 0;
}
