#include<bits/stdc++.h>

using namespace std;

int mp[1005][1005];

int main()
{
	srand(time(0));
	freopen("temperature.in","w",stdout);
	int n=50000,m=500000;
	int range=1000000000;
	printf("%d %d\n",n,m);
	for(int i=1;i<=n-84;i++)
	{
		int u=rand()*rand()*rand()%range-range/2;
		int v=rand()*rand()*rand()%range-range/2;
		printf("%d %d %d\n",u,v,rand()*rand()*rand());
	}
	printf("%d %d %d\n",INT_MIN,rand()*rand()*rand(),rand()*rand()*rand()); 
	printf("%d %d %d\n",INT_MAX,rand()*rand()*rand(),rand()*rand()*rand());
	printf("%d %d %d\n",rand()*rand()*rand(),INT_MAX,rand()*rand()*rand());
	printf("%d %d %d\n",INT_MIN,INT_MAX,rand()*rand()*rand());
	
	for(int i=1;i<=20;i++)
	{
		int u=rand()*rand()*rand();
		int v=rand()*rand()*rand();
		int w=rand()*rand()*rand();
		printf("%d %d %d\n",INT_MIN,u,rand()*rand()*rand());
		printf("%d %d %d\n",v,INT_MIN,rand()*rand()*rand());
		printf("%d %d %d\n",w,INT_MAX,rand()*rand()*rand());
		printf("%d %d %d\n",INT_MAX,v,rand()*rand()*rand());
	} 
	
	
	
	
	for(int i=1;i<=m-81;i++)
	{
		int u1=rand()*rand()*rand()%range-range/2,v1=rand()*rand()*rand()%range-range/2,u2=rand()*rand()*rand()%range-range/2,v2=rand()*rand()*rand()%range-range/2;
		if(u1>u2)swap(u1,u2);
		if(v1>v2)swap(v1,v2);
		printf("%d %d %d %d\n",u1,v1,u2,v2);
	}
	for(int i=1;i<=20;i++)
	{
		int u=rand()*rand()*rand();
		int v=rand()*rand()*rand();
		int w=rand()*rand()*rand();
		if(u>v)swap(u,v);
		printf("%d %d %d %d\n",INT_MIN,u,INT_MAX,v);
		printf("%d %d %d %d\n",u,INT_MIN,v,INT_MAX);
		printf("%d %d %d %d\n",u,INT_MIN,v,w);
		printf("%d %d %d %d\n",u,w,v,INT_MAX);
	}
	printf("%d %d %d %d\n",INT_MIN,INT_MIN,INT_MAX,INT_MAX);
}
