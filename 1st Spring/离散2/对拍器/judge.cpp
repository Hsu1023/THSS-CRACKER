#include<bits/stdc++.h>

using namespace std;

const int M=1005;

int head[M],a[M];
bool vst[M];
bool mp[M][M];
int n,m,q;

struct edge
{
	int nxt,to;
}e[M];

void insert(int u,int v)
{
	static int cnt=0;
	e[++cnt].to=v;e[cnt].nxt=head[u];head[u]=cnt;
}
void dfs(int x,int final)
{
	vst[x]=true;
	if(x==final)return;
	for(int i=head[x];i;i=e[i].nxt)
	{
		if(vst[e[i].to]==false)dfs(e[i].to,final);
	}
}
bool nopathjudge(int u,int v)
{
	memset(vst,0,sizeof vst);
	vst[u]=true;
	//dfs(u,v);
	//if(vst[v])return false;
	for(int k=1;k<=n;k++)
		for(int i=1;i<=n;i++)
			for(int j=1;j<=n;j++)
				mp[i][j]=mp[i][j]|(mp[i][k]&mp[k][j]);
	if(mp[u][v])return false;
	return true;
}
int main()
{
	freopen("in.txt","r",stdin);
	freopen("judge.txt","w",stdout); 
	scanf("%d%d",&n,&m);
	for(int i=1,temp;i<=n+1;i++)
	{
		scanf("%d",&temp);
		a[i]=temp+1;
	}
	for(int i=1;i<=n;i++)
	{
		for(int j=a[i],temp;j<a[i+1];j++)
		{
			scanf("%d",&temp);
			insert(i,temp+1);
			mp[i][temp+1]=true;
		}
	}
	scanf("%d",&q);
	queue<int>qu;
	for(int i=1,temp;i<=2*q;i++)
	{
		scanf("%d",&temp);
		qu.push(temp+1);
	}
	freopen("out.txt","r",stdin);
	char ch;
	while(q--)
	{
		//freopen("in.txt","r",stdin);
		int u,v;
		u=qu.front();qu.pop();
		v=qu.front();qu.pop();
		ch=getchar();
		bool flag=true;
		int x=0;
		while(flag)
		{
			x=0;
			while((!isdigit(ch))&&flag)
			{
				if(ch=='N')
				{
					if(!nopathjudge(u,v))
					{
						printf("0");
						return 0;
					}
					flag=false;
				} 
				else ch=getchar();
			}
			while(isdigit(ch)&&flag)x=x*10+ch-'0',ch=getchar();
			
			x++;
			if(x==u)continue;
			if(flag)
			{
				bool find=false;
				for(int i=head[u];i;i=e[i].nxt)
				{
					if(e[i].to==x)u=x,find=true;
				}
				if(!find){
					printf("0");
					return 0;
				}
				if(u==v)break;
			}
		}
	}
	printf("1");
	return 0;
}
