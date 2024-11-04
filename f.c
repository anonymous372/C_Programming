#include<stdio.h>
void findOddEven(int l, int r){
    if(l>r) return;
    printf("%d ", l);
    findOddEven(l+2, r);
}
int main(){
    int l, r;
    printf("Enter range l r: ");
    scanf("%d %d", &l, &r);
    printf("Odd Even: ");
    findOddEven(l,r);
    findOddEven(l+1,r);
    printf("\n");
    return 0;
}