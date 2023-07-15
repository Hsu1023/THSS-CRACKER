#include<iostream>
#include<cstdlib>
#include<cstdio>
#include<cmath>

using namespace std;

int n;
int a[100005];
int read()
{
	int x=0,f=1;char ch=getchar();
	while(!isdigit(ch))f=ch=='-'?-1:1,ch=getchar();
	while(isdigit(ch))x=(x<<3)+(x<<1)+ch-'0',ch=getchar();
	return x*f;
 } 
void swap(int &i,int &j)
{
	int temp=i;
	i=j;
	j=temp;
}
void quick_sort(int l,int r)
{
	if(l>=r)return;
	int L=l,R=r,st=a[l];
	while(L<R)
	{
		while(a[R]>=st&&L<R)R--;
		if(L<R)a[L]=a[R]; 
		while(a[L]<=st&&L<R)L++;
		if(L<R)a[R]=a[L];
	}
	a[L]=st;
	quick_sort(l,L-1);
	quick_sort(L+1,r);
}
int main()
{
	n=read();
	for(int i=1;i<=n;i++)
		a[i]=read();
	quick_sort(1,n); 
	for(int i=1;i<=n;i++)
		printf("%d ",a[i]);
	putchar('\n'); 
	for(int i=1;i<=n;i++)
		if(a[i]!=a[i-1]||i==1)printf("%d ",a[i]);
	return 0;
} 
