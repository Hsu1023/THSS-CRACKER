#include <bits/stdc++.h>
const int MAXN = 1000005;
const int inf = 1e9;
const double eps = 1e-10;
using namespace std;

struct point
{
	int x, y;	
}p[MAXN];


inline double dist(const point &a, const point &b)
{
	return sqrt((a.x - b.x) * (a.x - b.x) + (a.y - b.y) * (a.y - b.y));
}

int main()
{
	srand(time(0));
	freopen("data.txt","w",stdout);
	int n=10000;
	printf("%d\n",n);
	int range = 1000000;
	for(int i = 1; i<= n; i++)
		printf("%d %d\n", rand()*rand()%range-range/2, rand()*rand()%range-range/2);
	return 0;
}
