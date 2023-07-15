#include<bits/stdc++.h>

using namespace std;

vector <int> a[1005];
bool mp[105][105];

int main()
{
	srand(time(0));
	freopen("in.txt","w",stdout);
	int n=rand()%100+2;
	int m=rand()%(n*2)+1;
	if(2*m>n*(n-1))m=n*(n-1)/2;
	printf("%d %d\n",n,m);
	
	
	for(int i=1;i<=m;i++)
	{
		int u=rand()%n;
		int v=rand()%n;
		while(true)
		{
			if(u!=v&&mp[u][v]!=true)
			{
				mp[u][v]=true;
				a[u].push_back(v);
				break;
			}
			u=rand()%n;
			v=rand()%n;
		}
	}
	
	int cnt=0;
	for(int i=0;i<n;i++)
	{
		printf("%d ",cnt);
		cnt+=a[i].size();
	}
	printf("%d ",cnt);
	putchar('\n');
	for(int i=0;i<n;i++)
	{
		for(int j=0;j<a[i].size();j++)
			printf("%d ",a[i][j]);
	}
	putchar('\n');
	
	for(int i=0;i<n;i++)
	{
		for(int j=0;j<a[i].size();j++)
			printf("%d ",rand()%100+1);
	}
	putchar('\n');
	
	int q=rand()%n;
	printf("%d\n",q);
	while(q--)
	{
		int u=rand()%n;
		int v=rand()%n;
		while(u==v)u=rand()%n;
		printf("%d %d\n",u,v);
	}
} 
