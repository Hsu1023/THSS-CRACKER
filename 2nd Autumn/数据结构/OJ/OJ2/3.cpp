#include <cstdio>

const int maxn = 4e6 + 5;

typedef long long ll;

int n;
ll ans;
int c[maxn];
struct node
{
	int x, y;
}e[maxn];

int read()
{
	int x = 0, f = 1; char ch = getchar();
	while(ch > '9' || ch < '0')f = ch == '-' ? -1 : 1, ch = getchar();
	while(ch <= '9' && ch >= '0')x = (x<<3) + (x<<1) + ch - '0', ch = getchar();
	return x*f;
}
void update(int c[], int x, int val, int max)
{
	for(int i = x; i <= max; i += (i & (-i)))c[i] += val;
}
ll require(int c[], int x)
{
	ll ret = 0;
	for(int i = x; i; i -= (i & (-i)))ret += c[i];
	return ret;
}
bool cmpx(node a, node b)
{
	return a.x < b.x;
}
bool cmpy(node a, node b)
{
	return a.y < b.y;
}
template<class T>void sort(T a[], int l, int r, bool (*cmp)(T, T))
{
	if(l >= r)return;
	int L = l, R = r;
	T st = a[l];
	while(L < R)
	{
		while(!cmp(a[R], st) && L < R)R--;
		if(L < R)a[L] = a[R]; 
		while(cmp(a[L], st) && L < R)L++;
		if(L < R)a[R] = a[L];
	}
	a[L] = st;
	sort(a, l, L-1, cmp);
	sort(a, L+1, r, cmp);
}
int main()
{
	scanf("%d", &n);
	for(int i = 1; i <= n; i++)
	{
		e[i].x = read();
		e[i].y = read();
	}
	sort(e, 1, n, cmpy);
	for(int i = 1; i <= n; i++)e[i].y = i;
	sort(e, 1, n, cmpx);
	for(int i = 1; i <= n; i++)
	{
		ans += require(c, e[i].y);
		update(c, e[i].y, 1, n);
	}
	printf("%lld", ans);
	return 0;
}
