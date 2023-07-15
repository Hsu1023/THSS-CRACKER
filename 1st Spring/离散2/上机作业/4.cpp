#include<iostream>
#include<cstdlib>
#include<cstring>
#include<cstdio>
#include<algorithm>
#include<queue>

using namespace std;

struct edge
{
	int to,w,nxt;
}e[200005<<1];

bool cmp(edge p,edge q)
{
	return p.w<q.w;	
}

int head[5005],n,m,ans,a[5005],b[5005],c[5005];
bool vis[5005];

void insert (int u,int v,int w)
{
	static int cnt=1;
	e[++cnt].to=v;e[cnt].w=w;e[cnt].nxt=head[u];head[u]=cnt;
}
struct node
{
	int one,two,three,four;
	bool operator < (const node&x) const
	{
		return two>x.two;
	}
};
void prim()
{
	priority_queue<node>q;
	q.push((node){0,0,0,0});
	while(!q.empty())
	{
		node now=q.top();
		int u=now.one;
		q.pop();
		if(vis[u])continue;
		vis[u]=1;
		ans+=now.two;
		int temp=now.three;
		int from=now.four;
		if(temp!=0)
		{
			if(temp&1)printf("[%d->%d]",e[temp].to,from);
			else printf("[%d->%d]",from,e[temp].to);
		}
		for(int i=head[u];i;i=e[i].nxt)if(!vis[e[i].to])
		{
			q.push((node){e[i].to,e[i].w,i,u});
		}
	}
}
int main()
{
	scanf("%d%d",&n,&m);
	for(int i=0;i<=n;i++)scanf("%d",a+i);
	for(int i=0;i<m;i++)scanf("%d",b+i);
	for(int i=0;i<m;i++)scanf("%d",c+i);
	for(int i=0;i<n;i++)
	{
		for(int j=a[i];j<a[i+1];j++)
		{
			insert(i,b[j],c[j]);
			insert(b[j],i,c[j]);
		}
	}
	prim();
	printf(" %d\n",ans);
	return 0;
}
