int printInt(int num);
int printStr(char * c);
int readInt(int *eP);

int main()
{
    int a;
	int b;
    int *e;
    
    printStr("\n        ######################################################\n        ##                                                  ##\n        ##         Print first 20 natural numbers           ##\n        ##                   (LOOP)                         ##\n        ##                                                  ##\n        ######################################################\n\n");
    
    b = 1;
    e = &b;

    printStr("        ");
    for(a=0;a<20;a = a + 1){
        printInt(b);
        printStr(" ");
        b = b+1;
    }

    return 0;
}