// Add two numbers
int printInt(int x){
    return 0;
}
int readInt(int* n){
    return 1;
}
int printStr(char* s){
    return 2;
}
int main() 
{
    int x = 2;
    int y = 3;
    int z;
    z = x + y;
    printInt(x);
    // printStr("+");
    printInt(y);
    // printStr(" = ");
    printInt(z);
    return 0;
}