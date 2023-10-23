// Find factorial by iteration
int printInt(int x){
    return 0;
}
int readInt(int* n){
    return 1;
}
int printStr(char* s){
    return 2;
}
int a[10];
int main() {
    int n;
    int i = 0;
    int r = 1;
    readInt(&n);
    for(i = 1; i <= n; i = i + 1)
        r = r * i;
    printInt(n);
    printStr("! = ");
    printInt(r);
    return 0;
}