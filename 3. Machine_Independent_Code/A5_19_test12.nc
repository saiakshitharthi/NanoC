int printInt(int x){
    return 0;
}
int readInt(int* n){
    return 1;
}
int printStr(char* s){
    return 2;
}
int integer; 
void hello()
{
    printStr("Hello");
}
int main()
{
    int iff;
    char c = '\'';
    if (c == '\n')
    {
        c = '\\';
    }
    else
    {
        c = 'a';
    }
    int abcd;
    int asdhdf;
    int n;
    int i = 0;
    c = 'a';
    // char *s = "\\Hello World!!!\n";
    int r = 1;
    readInt(&n);
    for (i = 1; i <= n; i = i + 1){
        r = r * i;
    }
    printInt(n);
    // char c = '\';
    readInt(&n);
    for (i = 1; i <= n; i = i + 1)
        r = r * i;
    printInt(n);
    printStr("! = ");
    printInt(r);
    return 0;
    printStr("! = ");
    printInt(r);

    int a[10];
    int m;
    readInt(&n);
    for (i = 0; i < n; i = i + 1)
    {
        readInt(&m);
        a[i] = m;
    }
    m = a[0];
    for (i = 1; i < n; i = i + 1)
    {
        if (a[i] > m)
            m = a[i];
    }
    printStr("Max of: ");
    printInt(a[0]);
    for (i = 1; i < n; i = i + 1)
    {
        printStr(", ");
        printInt(a[i]);
    }
    printStr(": = ");
    printInt(m);
    return 0;
}