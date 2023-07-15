#include<bits/stdc++.h>

using namespace std;

vector<int> v;

int SELECT(int *a, int l, int r, int k)
{
	//int key = rand()%(r - l + 1)+ l;
	//swap(a[r], a[key]);
	int p = l - 1;
	for(int i = l; i < r; i++)
		if(a[i] <= a[r]) swap(a[++p], a[i]); 
	swap(a[++p], a[r]);
	if(p - l + 1 == k)return a[p];
	else if(p - l + 1 > k) return SELECT(a, l, p - 1, k);
	else return SELECT(a, p + 1, r, k - (p - l + 1));
}

void PARTITION(int *A, int left, int right, int k, int gap)
{
	if(k <= 0 || left >= right)return;
	int mid_rank = (k + 1) / 2 * gap + left - 1;
	SELECT(A, left, right, mid_rank - left + 1);
	v.push_back(A[mid_rank]);
	PARTITION(A, left, mid_rank, (k + 1) / 2 - 1, gap);
	PARTITION(A, mid_rank + 1, right, k - (k + 1) / 2, gap);
}
void GET_QUANTILES(int *A, int n, int k)
{
	int gap = n / k;
	if(n % k != 0) gap = gap + 1;
	PARTITION(A, 1, n, k - 1, gap);
}
int main()
{
	//int a[1000]={0,8,4,7,11,9,1,3,6,5,12,2,10};
	srand(time(0));
	static int a[1000005];
	int n = 300000;
	while(true)
	{
		int k = rand() * rand() % int(sqrt(n)) + 1;
		for(int i = 1; i<= n; i++)a[i] = rand()*rand();
		v.clear();
		printf("begin\n");
		GET_QUANTILES(a, n, k);
		printf("end\n");
		
		sort(v.begin(), v.end());
		sort(a + 1, a + n + 1);
		int cnt = 0;
		int gap = (n/k) + (n%k?1:0);
		for(int i = gap; i < n; i += gap, cnt++)
			if(a[i]!=v[cnt]){printf("false");return 0;}
		printf("true\n");
		
	}
	
}
