void fir(int x[], int c[], int y[], int n, int m) {
    int i, j;
    for (j=0; j<n-m+1; j++) {
        y[j] = 0;
        for (i=0; i<m; i++)
            y[j] = add_q31(y[j], mul_q31(c[i], x[j-i+(m-1)]));
    }
}