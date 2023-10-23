int f_odd(int);
int f_even(int);
void fib(void*,void){
    int a;
    int b;
    int c;
    int a = b+c;
}
int fibonacci(int n) {
    //void x= y;
    //void z = 7;
    int a;
    int b;
    int c;
    int d;
    void* x=  y;
    if(a == b){
        return (n % 2 == 0)? f_even(n): f_odd(n);
    }
    else{
        return (n % 2 == 0)? f_even(n): f_odd(n);
    }
}
int f_odd(int n) {
    return (n == 1)? 1: f_even(n-1) + f_odd(n-2);
}
int f_even(int n) {
return (n == 0)? 0: f_odd(n-1) + f_even(n-2);
}

void temp_function(void*,void*,void*,int*);
void temp_function(void*,void*,void*,int*) {
    int n = 10;
    int r;
    r = fibonacci(n);
    printStr("fibo(");
    printInt(n);
    printStr(") = ");
    printInt(r);
    
}

int main(){
    int y;
    int* abcd[5];
    void* x= y;
    int* z = y;
    return 0;
}
int* func2(int*,void*,char*,int,char);
int* func2(int* abcd,void* efgh,char* ijkl,int mnop, char qrst){

    void x = y;
}
void* main(int* , int*){

    if(fibonacci(4)){
        return fibonacci(4);
    }
    else{
        return fibonacci(8);
    }
}