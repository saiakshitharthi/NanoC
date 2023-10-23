// Swap two numbers
int printInt(int x){
    return 0;
}
int readInt(int* n){
    return 1;
}
int printStr(char* s){
    return 2;
}
void swap(int* b, int* a);
int main() {
    int x;
    int y;
    readInt(&x);
    readInt(&y);
    printStr("Before swap:\n");
    printStr("x = "); 
    printInt(x);
    printStr(" y = "); 
    printInt(y);
    swap(&x, &y);
    printStr("\nAfter swap:\n");
    printStr("x = "); 
    printInt(x);
    printStr(" y = ");
    printInt(y);
    return 0;
}

void swap(int *p, int *q) {
    int t;
    t = *p;
    *p = *q;
    *q = t;
    return;
}