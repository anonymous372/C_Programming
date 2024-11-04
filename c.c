#include<stdio.h>
int fact(int n){
    if(n==1 || n==0){
        return 1;
    }
    return n * fact(n-1);
}
int main(){
    int ans = 1, n;
    printf("Enter n: ");    
    scanf("%d", &n);
    if(n<0){
        printf("Only positive numbers allowed !!\n");
        return 0;
    }
    ans = fact(n);
    
    printf("Ans: %d\n", ans);
    return 0;
}