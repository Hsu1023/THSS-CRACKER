#include<bits/stdc++.h>

using namespace std;

typedef pair<int,int> node;

const int maxn=405;

int n,m,t;
int dist[maxn],pre[maxn],beg[maxn],fin[maxn],to[maxn],w[maxn];
bool vst[maxn];

void Dijkstra(int u,int v)
{
	priority_queue<node,vector<node>,greater<node> >q;
	q.push(make_pair(0,u));
	memset(dist,0x3f,sizeof dist);
	memset(vst,0,sizeof vst);
	dist[u]=0;pre[u]=-1;
	while(!q.empty())
	{
		node now=q.top();
		q.pop();
		int x=now.second;
		if(vst[x])continue;
		vst[x]=true;
		for(int i=beg[x];i<=fin[x];i++)
		{
			int y=to[i];
			if(dist[y]>dist[x]+w[i])
			{
				dist[y]=dist[x]+w[i];
				pre[y]=x;
				q.push(make_pair(dist[y],y));
			}
		}
	}
	if(dist[v]==0x3f3f3f3f)printf("NO PATH\n");
	else
	{
		putchar('[');
		stack<int> s;
		for(int i=v;i!=-1;i=pre[i])s.push(i);
		while(!s.empty())
		{
			int temp=s.top();
			//printf("%d",temp);
			//if(temp!=v)printf("->");
			//else printf(" "); 
			s.pop();
		}
		printf("%d]\n",dist[v]);
	}
}
int main()
{
	freopen("in.txt","r",stdin);
	freopen("2.txt","w",stdout); 
	scanf("%d%d",&n,&m);
	for(int i=0;i<=n;i++)scanf("%d",beg+i);
	for(int i=0;i<n;i++)fin[i]=beg[i+1]-1;
	for(int i=0;i<m;i++)scanf("%d",to+i);
	for(int i=0;i<m;i++)scanf("%d",w+i);
	scanf("%d",&t);
	while(t--)
	{
		int u,v;
		scanf("%d%d",&u,&v);
		Dijkstra(u,v);
	}
	return 0;
}
