#include<bits/stdc++.h>

using namespace std;

void sort1(int a[],int l,int r)//quick
{
	if(l<r)
	{
		int L=l,R=r;
		int aux=a[l];
		while(L<R)
		{
			while(L<R&&a[R]>aux)R--;
			if(L<R)a[L++]=a[R];
			while(L<R&&a[L]<aux)L++;
			if(L<R)a[R--]=a[L];
		} 
		a[L]=aux;
		sort1(a,l,L-1); 
		sort1(a,L+1,r);
	}
}

void merge(int a[],int l,int r)
{
	int* c=new int[r-l+10];
	int mid=l+r>>1;
	int k=0;
	int i=l,j=mid+1;
	for(;i<=mid&&j<=r;)
	{
		if(a[i]<a[j])c[k++]=a[i++];
		else c[k++]=a[j++];
	}
	while(i<=mid)c[k++]=a[i++];
	while(j<=r)c[k++]=a[j++];
	for(int v=0;v<k;v++)
		a[l+v]=c[v]; 
}
void sort2(int a[],int l,int r)//merge
{
	if(l>=r)return;
	int mid=l+r>>1;
	sort2(a,l,mid);
	sort2(a,mid+1,r);
	merge(a,l,r);
} 

void sort3(int a[],int l,int r)//bubble
{
	bool exchange=false,pass=1;
	while(true)
	{
		exchange=false;
		for(int i=r;i>=l+pass;i--)//
		{
			if(a[i-1]>a[i])
			{
				swap(a[i-1],a[i]);
				exchange=true;
			}
		}
		if(exchange==false)return;
		pass++;
	}
}


void sort4(int a[],int l,int r)//select
{
	for(int i=1;i<=r-l;i++)
	{
		int maxi=INT_MIN,key;
		for(int j=l;j<=r-i+1;j++)
		{
			if(maxi<a[j])
			{
				key=j;
				maxi=a[j];
			}
		}
		swap(a[key],a[r-i+1]);
	}
}

void sort5(int a[],int l,int r)//insert
{
	int aux;
	for(int i=l+1;i<=r;i++)
	{
		aux=a[i];
		if(a[i]<a[i-1])
		{
			int j=i-1;
			while(a[j]>aux&&j>=l)
			{
				a[j+1]=a[j];
				j--;
			}
			a[j+1]=aux;
		}
	}
}

void sort6(int a[],int l,int r)//shell
{
	int gap=(r-l+1)>>1;
	for(;gap>=1;gap=gap/2)
	{
		for(int i=l;i<=l+gap-1;i++)
		{
			for(int j=i+gap;j<=r;j+=gap)
			{
				int aux=a[j];
				if(a[j-gap]>a[j])
				{
					int k=j-gap;
					while(k>=l&&a[k]>aux)a[k+gap]=a[k],k-=gap;
					a[k+gap]=aux;
				}
			}
		}
	}
}

int main()
{
	int a[20]={0,1,54,19,15,891,-1,15,19,4847,48,-1148,158,0,589,589,15,1589,15,-1148};
	int n=19;
	sort6(a,1,n);
	for(int i=1;i<=n;i++)printf("%d ",a[i]);
	return 0;
		
} 
