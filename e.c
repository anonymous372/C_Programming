#include<stdio.h>
#include<stdbool.h>

bool isPrime(int n, int div){
    if(n==1) return false;
    if(div*div > n) return true;
    if(n%div==0) return false;
    return isPrime(n, div+1);
}  
int main(){
    int n;
    printf("Enter n: ");    
    scanf("%d", &n);
    if(n<=0){
        printf("Only positive numbers allowed !!\n");
        return 0;
    }
    if(isPrime(n,2)){
        printf("%d is a prime :)", n);
    } else {
        printf("%d is not a prime :(", n);
    }
    printf("\n");
    return 0;
}