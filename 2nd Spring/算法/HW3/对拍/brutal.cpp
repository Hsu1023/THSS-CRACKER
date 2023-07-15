#include <bits/stdc++.h>
const int MAXN = 1000005;
const int inf = 1e9;
const double eps = 1e-10;
using namespace std;

struct point
{
	int x, y;	
	bool operator == (const point &a){
		return x == a.x && y == a.y;
	}
}p[MAXN];

typedef pair<point, point> node;
node key;

inline double dist(const point &a, const point &b)
{
	return sqrt(1LL*(a.x - b.x) * (a.x - b.x) + 1LL*(a.y - b.y) * (a.y - b.y));
}

int main()
{
	freopen("data.txt","r",stdin);
	freopen("2.txt","w",stdout);
	int n;
	scanf("%d",&n);
	for(int i = 1; i <= n; i++){
		int x, y;
		scanf("%d%d", &x, &y);
		p[i].x = x;
		p[i].y = y;
	}
	double ans = inf;
	for(int i = 1; i <= n; i++)
	{
		for(int j = i+1; j <= n; j++)
		{
			if(ans > dist(p[i], p[j]))key = make_pair(p[i], p[j]), ans = dist(p[i], p[j]);
		
		}
	}
	cout<<ans;
	//cout<<endl<<key.first.x<<key.first.y<<key.second.x<<key.second.y; 
}
