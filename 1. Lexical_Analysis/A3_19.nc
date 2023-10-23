// for else if Printint
// Single line comment
/*
    Multiline comment.
    if for else int return
/*
int no_nesting;
*/
*/
//*
int abcd = 2*3;
void hello()
{
    printStr("Hello");
}
int main()
{
    char c = '\'';
    if (c == '\n')
    {
        c = '\\';
    }
    else
    {
        c = 'a';
    }
    int _abcd_;
    int _asdhdf_;
    int n;
    int i = 0;
    char c = 'a';
    char *s = "\\Hello World!!!\n";
    int _r = 1;
    readInt(&n);
    for (i = 1; i <= n; i = i + 1){
        r = r * i;
    }
    printInt(n);
    // char c = '\';
    int n;
    int i = 0;
    int r = 1;
    readInt(&n);
    for (i = 1; i <= n; i = i + 1)
        r = r * i;
    printInt(n);
    printStr("! = ");
    printInt(r);
    return 0;
    printStr("! = ");
    printInt(r);

    int n;
    int a[10];
    int m;
    int i;
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
