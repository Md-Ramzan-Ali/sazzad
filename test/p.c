#include<stdio.h>
#include<assert.h>
int sum(int a, int b){
    int c;
    c=a+b;
    return c;
}

void test_all(){
    assert(sum(1,2)==3);
    assert(sum(2,9)==11);
}
int main(){
    test_all();
    return 0;
}