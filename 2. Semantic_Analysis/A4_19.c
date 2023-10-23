#include<stdio.h>
#include "y.tab.h"

int main(){
    //yydebug = 1;
    return yyparse();
}