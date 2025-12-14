#include<stdio.h>
#include<assert.h>
extern int sum(int a, int b);

void test_all(){
    assert(sum(1,2)==3);
    assert(sum(2,9)==11);
}
int main(){
    test_all();
    return 0;
}