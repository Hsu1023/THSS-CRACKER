#include<bits/stdc++.h>

using namespace std;

bool mp[505][505],vst[505];
int n1,n2,m,match[505];

bool find(int now)
{
	if(vst[now])return false;
	vst[now]=true;
	for(int i=1;i<=n2;i++)if(mp[now][i])
	{
		if(match[i]==0||find(match[i]))
		{
			match[i]=now;
			return true;
		}
	}
	return false;
}

int main()
{
	scanf("%d%d%d",&n1,&n2,&m);
	while(m--)
	{
		int t1,t2;
		scanf("%d%d",&t1,&t2);
		t1++,t2++;
		mp[t1][t2]=true;
	}
	for(int i=1;i<=n1;i++)
	{
		memset(vst,0,sizeof vst);
		find(i);
	}
	for(int i=1;i<=n2;i++)
		if(match[i]!=0)printf("%d %d\n",match[i]-1,i-1);
	return 0;
} 
