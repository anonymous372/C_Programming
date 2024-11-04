#include<stdio.h>
int main(){
    int m1, n1, m2, n2;
    printf("Enter size of matrix1 m n: ");
    scanf("%d %d", &m1, &n1);
    printf("Enter size of matrix2 m n: ");
    scanf("%d %d", &m2, &n2);
    
    if(n1 != m2){
        printf("Invalid matrix size for matrix multiplication !!!\n");
        return 0;
    }

    int mat1[m1][n1], mat2[m2][n2], res[m1][n2];
    printf("Enter matrix1 %dx%d:\n", m1,n1);
    for(int i=0;i<m1;i++){
        for(int j=0;j<n1;j++){
            scanf("%d",&mat1[i][j]);
        }
    }
    printf("\nEnter matrix2 %dx%d:\n", m2,n2);
    for(int i=0;i<m2;i++){
        for(int j=0;j<n2;j++){
            scanf("%d",&mat2[i][j]);
        }
    }

    // Multiplication
    for(int i=0;i<m1;i++){
        for(int j=0;j<n2;j++){
            int sum=0;
            for(int k=0;k<n1;k++){
                sum += mat1[i][k] * mat2[k][j];
            }
            res[i][j] = sum;
        }
    }

    // Result 
    printf("\nMultiplication result %dx%d:\n", m1,n2);
    for(int i=0;i<m1;i++){
        for(int j=0;j<n2;j++){
            printf("%d ", res[i][j]);
        }
        printf("\n");
    }
    return 0;
}


// 0 0   0 0 0
// 0 0   0 0 0 
// 0 0

// 0 0 0
// 0 0 0 
// 0 0 0

// m1:n1