// Find max of three numbers
int printInt(int x){
    return 0;
}
int readInt(int* n){
    return 1;
}
int printStr(char* s){
    return 2;
}
// void* x = 1;
//void x=1;
int main() 
{
    int x = 2;
    int y = 3;
    int z = 1;
    // void* x = 1;
    int m;
    m = x > y? x: y;
    m = m > z? m: z;
    printStr("max(");
    printInt(x);
    printStr(", ");
    printInt(y);
    printStr(", ");
    printInt(z); 
    printStr(") = ");
    printInt(m);
    return 0;
}