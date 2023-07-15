#include<bits/stdc++.h>
#define T n

using namespace std;

const int maxn=100005;


struct edge
{
	int to,nxt,val;
}e1[maxn],e2[maxn];

int n,vstcnt; 
int head1[maxn],head2[maxn],dist1[maxn],dist2[maxn];
int w[maxn],IN[maxn],OUT[maxn],in[maxn],vst[maxn];
vector<int>edg[maxn];
deque<int>pre[maxn];

void insert1(int u,int v,int w)
{
	static int cnt1=0;
	e1[++cnt1].to=v;e1[cnt1].nxt=head1[u];e1[cnt1].val=w;head1[u]=cnt1;
}
void insert2(int u,int v,int w)
{
	static int cnt2=0;
	e2[++cnt2].to=v;e2[cnt2].nxt=head2[u];e2[cnt2].val=w;head2[u]=cnt2;
}
void Topology_sort(int head[],edge e[],int dist[],int ord)
{
	queue<int>q;
	for(int i=0;i<=n;i++)if(in[i]==0)q.push(i);
	while(!q.empty())
	{
		int x=q.front();
		q.pop();

		for(int i=head[x];i;i=e[i].nxt)
		{
			int y=e[i].to;
			if(dist[x]+e[i].val>=dist[y])
			{
				if(ord==1)
				{
					if(dist[x]+e[i].val>dist[y])pre[y].clear();
					pre[y].push_back(x);
				}
				dist[y]=dist[x]+e[i].val;
			}
			in[y]--;
			if(in[y]==0)q.push(y);
		}
	}
}
void dfs(int x)
{
	++vstcnt;
	if(x!=T)vst[vstcnt]=x;
	if(IN[x]==0)
	{
		putchar('[');
		for(int i=vstcnt;i>1;i--)
			printf("%d->",vst[i]);
		printf("end]\n");
	}
	for(deque<int>::iterator it=pre[x].begin();it!=pre[x].end();it++)dfs(*it);
	vstcnt--;
}
int main()
{
	scanf("%d",&n);
	char ch=getchar();while(ch!='\n')ch=getchar();
	for(int i=0;i<n;i++)
	{
		bool flag=true;
		int cnt=0,temp=-1,x=0;
		while(flag)
		{
			cnt++;
			ch=getchar();x=0;
			while((!isdigit(ch))&&flag)flag=ch=='\n'?0:1,ch=getchar();
			while((isdigit(ch))&&flag)x=x*10+ch-'0',ch=getchar();
			flag=ch=='\n'?0:1;
			if(cnt==1)temp=x;
			else if(cnt==2)w[temp]=x;
			else edg[x].push_back(temp),IN[temp]++,OUT[x]++;
		}
	}
	for(int i=0;i<n;i++)
	{
		for(vector<int>::iterator it=edg[i].begin();it!=edg[i].end();it++)
		{
			insert1(i,*it,w[i]);
			insert2(*it,i,w[i]);
		}
		if(OUT[i]==0)insert1(i,T,w[i]),insert2(T,i,w[i]),IN[T]++,OUT[i]++; 
	}
	
	for(int i=0;i<=n;i++)in[i]=IN[i];
	Topology_sort(head1,e1,dist1,1);
	for(int i=0;i<=n;i++)in[i]=OUT[i];
	Topology_sort(head2,e2,dist2,2);
	
	printf("%d\n",dist1[T]);
	dfs(T);
	for(int i=0;i<n;i++)printf("%d\n",dist1[T]-dist1[i]-dist2[i]);
	return 0;
}
