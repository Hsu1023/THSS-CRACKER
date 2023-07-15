#include<bits/stdc++.h>

using namespace std;

const int M=1001;

int n,m,num;
int p[M],q[M];
vector<int>path[M][M];

int main()
{
	scanf("%d%d",&n,&m);
	for(int i=0;i<n+1;i++)scanf("%d",p+i);
	for(int i=0;i<m;i++)scanf("%d",q+i);
	for(int i=0;i<n;i++)
		for(int j=p[i];j<p[i+1];j++)
			path[i][q[j]].push_back(q[j]);
	for(int k=0;k<n;k++)
		for(int i=0;i<n;i++)
			for(int j=0;j<n;j++)
			{
				if(path[i][j].size()!=0)continue;
				if(path[i][k].size()!=0&&path[k][j].size()!=0)
				{
					for(int l=0;l<path[i][k].size();l++)
						path[i][j].push_back(path[i][k][l]);
					for(int l=0;l<path[k][j].size();l++)
						path[i][j].push_back(path[k][j][l]);
				}
			}
	scanf("%d",&num);
	while(num--)
	{
		int u,v;
		scanf("%d%d",&u,&v);
		if(path[u][v].size()==0)printf("NO PATH\n");
		else
		{
			printf("%d->",u);
			int sz=path[u][v].size();
			for(int l=0;l<sz;l++)
			{
				printf("%d",path[u][v][l]);
				if(l==sz-1)putchar('\n');
				else putchar('-'),putchar('>');
			}
		}
	}
	return 0; 
}
