#include<iostream>
#include<bits/stdc++.h>

using namespace std;

int n;
void partition(int A[], int p, int r)
{
	int x = A[r];
    int q = p - 1;
    int t = p - 1;
    for (int i =  p; i<= r - 1;i++)
    {
        if (A[i] < x)
        {
            q = q + 1;
            t = t + 1;
            swap(A[i], A[q]);
            swap(A[i], A[t]);
        }
        else if (A[i] == x)
        {
        	
            t = t + 1;
            swap(A[t], A[i]);
        }
    }
    t = t + 1;
    swap(A[r], A[t]);
    for(int i=p;i<=r;i++)
    {
    	printf("%d ",A[i]);
	}
	putchar('\n');
} 
void partition2(int A[], int p, int r)
{
	vector<int>a[3];
	for(int i = p; i<=r;i++)
	{
		if(A[i] == A[r])a[1].push_back(A[i]);
		else if (A[i]<A[r])a[0].push_back(A[i]);
		else a[2].push_back(A[i]);
	}
	for(int i = 0; i < 3; i++)
	for(int j=0;j<a[i].size();j++)
	{
		printf("%d ",a[i][j]);
	}
	
}

int main()
{
	int a[100]={0,1,5,9,6,4,7,1,3,4,4,
				-100,0,3,4,8,4,9,4,4,2};
	
	n=20;
	int b[100];
	for(int i=0;i<100;i++)b[i]=a[i];
	partition(a,1,n);
	partition2(b,1,n);
}
