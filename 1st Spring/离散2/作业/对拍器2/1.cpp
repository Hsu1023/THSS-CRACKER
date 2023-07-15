#include<iostream>
#include<vector>
using namespace std;
const int MAX=0x3f3f3f3f;
const int N=120;
int M;
int A[N];
int B[2*N];
int w[2*N];
int v,e,n;
int test[N][2];
int value[N][N];
vector <int> line[N];
int res[N][N];
bool flag[N][N];
void Init()
{
	cin>>v>>e;
	for(int i=0;i<=v;i++)
	{
		cin>>A[i]; 
	}
	for(int i=0;i<e;i++)
	{
		cin>>B[i];
	} 
	for(int i=0;i<e;i++)
	{
		cin>>w[i];
	} 
	cin>>n;
	for(int i=0;i<n;i++)
	{
		cin>>test[i][0]>>test[i][1];
	}
	for(int i=0;i<v;i++)
		for(int j=0;j<v;j++)
			value[i][j]=MAX,flag[i][j]=0;
	for(int i=0;i<v;i++)flag[i][i]=1;
}		
void dijkstra(int start,int index)
{
	for(int i=A[index];i<A[index+1];i++)
	{
		if(value[start][B[i]]>=(value[start][index]+w[i])) 
		{
			value[start][B[i]]=value[start][index]+w[i];
			res[start][B[i]]=index;
		}
	}
	int indexnow=1000,valuenow=MAX;
	for(int i=0;i<v;i++)
	{
		if(flag[start][i]==1)continue;
		if(value[start][i]<valuenow)valuenow=value[start][i],indexnow=i;
	}
	if(indexnow>=v)return;
	flag[start][indexnow]=1;
	line[start].push_back(indexnow);
	if(line[start].size()==(v-1))return;
	else
	{
		dijkstra(start,indexnow);
	}
}

void Dijkstra()
{
	for(int i=0;i<v;i++)
	{
		for(int j=A[i];j<A[i+1];j++)
		{
			value[i][B[j]]=min(value[i][B[j]],w[j]);
			res[i][B[j]]=i;
		}
		dijkstra(i,i);
	}
	
}
void Print (int start,int end)
{
	vector<int>path;
	int num=end;
	path.push_back(num);
	while(res[start][num]!=start)
	{
		num=res[start][num];
		path.push_back(num);
	}
	int size=path.size();
	cout<<"[";//<<start<<"->";
	for(int j=size-1;j>=0;j--)
	{
		//cout<<path[j];
		//if(j==0)cout<<" ";
		//else cout<<"->";
	}
	cout<<value[start][end];
	cout<<"]"<<endl;
}
int main()
{
	freopen("in.txt","r",stdin);
	freopen("1.txt","w",stdout); 
	Init();
	Dijkstra();
	for(int i=0;i<n;i++)
	{
		if(value[test[i][0]][test[i][1]]==MAX)cout<<"NO PATH\n";
		else
		{
			Print(test[i][0],test[i][1]);
		}
		
	}
	return 0;
}
