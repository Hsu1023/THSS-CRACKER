#include<bits/stdc++.h>

using namespace std;

int mp[1005][1005];
int mp2[1005][1005];

int main()
{
	freopen("temperature.in","r",stdin);
	freopen("temperature2.out","w",stdout);
	int n,m;
	scanf("%d%d",&n,&m);
	int range = 100;
	for(int i=1;i<=n;i++)
	{
		int u,v,val;
		scanf("%d%d%d",&u,&v,&val);
		u+=range/2;
		v+=range/2;
		mp[u][v]++;
		mp2[u][v]+=val;
	}
	for(int i=1;i<=m;i++)
	{
		int num=0;
		long long sum=0;
		int u1,v1,u2,v2;
		scanf("%d%d%d%d",&u1,&v1,&u2,&v2);
		u1+=range/2;u2+=range/2;v1+=range/2,v2+=range/2;
		for(int j=u1;j<=u2;j++)
			for(int k=v1;k<=v2;k++)
			{
				num+=mp[j][k];
				sum+=mp2[j][k];
			}
			if(num==0)printf("0\n");
			else printf("%d\n",sum/num); 
	}
}
