//Errors: arguments inside main
//void*
//
/*/
/*  abcd1234 */

int printInt(int x){
    return 0;
}
int readInt(int* n){
    return 1;
}
int printStr(char* s){
    return 2;
}
void functionName(void* abc){
    int* arr[4];
    // void* ptr = 120;
    // int* ptr = 2349;
    int ar[5];
    //int arr[-5];
    int x = 2;
    int y = -x;
    int z = 1;
    ar[x*y+z] = 7;
    // int x = &y;
    // int x = y;
    // //void x = y;
    char* none = 2348;
    int a = 1;
    int b = 2;
    int c = 3;
    int d = 4;
    int e = 5;
    int f = 6;
    int h = 7;
    z = (a+b)*c %d%f*c/-123;
    int q = (a/b/c/d/e/f/c/h)*a*b*c*d;
    // int r = (a || b)&&(a&&b||c||d);
    a = !b;
    return;
}

int main() 
{
    return 0;
    int x = 2;
    int y = 3;
    int z;
    z = x + y;
    printInt(x);
    printStr("+");
    printInt(y);
    printStr(" = ");
    printInt(z);
    return 0;
}