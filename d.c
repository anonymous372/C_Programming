#include<stdio.h>
void fib(int n, int fs, int sc, int cur){
    if(cur>n) return;
    printf("%d ", fs);
    int sum = fs+sc;
    fs = sc;
    sc = sum;
    fib(n, fs, sc, cur+1);
}  
int main(){
    int n;
    printf("Enter n: ");    
    scanf("%d", &n);
    if(n<0){
        printf("Only positive numbers allowed !!\n");
        return 0;
    }
    fib(n, 0,1,1);
    printf("\n");
    return 0;
}