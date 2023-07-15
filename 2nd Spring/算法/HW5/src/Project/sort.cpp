#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <climits>
#include <iostream>
#include "timer.h"

typedef unsigned int uint; 
typedef long long ll;

const unsigned int mod = UINT_MAX;
const int MAXN = 200000005;
static uint aux[MAXN];
int n;
Timer timer;

using namespace std;

inline void swap(uint& x, uint& y)
{
	uint t = x; x = y; y = t;
}
void insertionSort(uint *a, int n)
{
	for (int i = 2; i <= n; i++)
	{
		int j = i - 1;
		while (a[j + 1] < a[j] && j >= 1) swap(a[j + 1], a[j]), j--;
	}
}
void createData(uint* a, int n)
{
	for (int i = 1; i <= n; i++)
		a[i] = (1LL * rand() * rand() * rand() + rand()) % mod;
}
void quickSort(uint* a, int l, int r)
{
	if (l >= r)return;
	int q = l - 1;
	for (int i = l; i < r; i++)
		if (a[i] < a[r]) swap(a[++q], a[i]);
	swap(a[q + 1], a[r]);
	quickSort(a, l, q);
	quickSort(a, q + 2, r);
}
void quickSort(uint* a, int n)
{
	quickSort(a, 1, n);
}

void mergeSort(uint* a, int l, int r)
{
	if (l >= r)return;
	int mid = ((r - l) >> 1) + l;
	mergeSort(a, l, mid);
	mergeSort(a, mid + 1, r);
	int p1 = l, p2 = mid + 1, p = l;
	while (p1 <= mid && p2 <= r)
	{
		if (a[p1] <= a[p2])aux[p++] = a[p1++];
		else aux[p++] = a[p2++];
	}
	while (p1 <= mid)aux[p++] = a[p1++];
	while (p2 <= r)aux[p++] = a[p2++];
	for (int i = l; i <= r; i++)a[i] = aux[i];
}
void mergeSort(uint* a, int n)
{
	mergeSort(a, 1, n);
}

void printData(uint* a, int n)
{
	for (int i = 1; i <= n; i++)
		printf("%u ", a[i])
		;
}
void shellSort(uint* a, int n)
{
	for (int step = n / 2; step >= 1; step >>= 1)
	{
		for (int i = step + 1; i <= n; i++)
		{
			int j = i - step;
			while (a[j + step] < a[j] && j >= 1) 
				swap(a[j + step], a[j]), j -= step;
		}
	}
}
void radixSort(uint *a, int n) 
{
	int r = int(log(mod) / log(2));
	uint pow_r[40]{}, pow_cnt = 0;
	ll pow_value = 1;
	while (pow_value <= mod)
		pow_r[++pow_cnt] = pow_value, pow_value *= r;
	uint C[40];
	for (int j = 1; j <= pow_cnt; j++)
	{
		memset(C, 0, sizeof C);
		for (int i = 1; i <= n; i++)
			C[(a[i] / pow_r[j]) % r + 1]++;
		for (int i = 2; i <= r; i++)
			C[i] += C[i - 1];
		for (int i = n; i >= 1; i--)//
			aux[C[(a[i] / pow_r[j]) % r + 1]--] = a[i];
		for (int i = 1; i <= n; i++)a[i] = aux[i];
	}
}

int main()
{
	static uint a[MAXN];
	srand(time(0));

	
	while(true)
	{
		printf("请输入数据规模：");
		cin >> n;
		printf("***********************\n请输入选择的排序方式：1.insertionSort 2.shellSort 3.quickSort 4.mergeSort 5.radixSort\n");
		int op; 
		cin >> op;
		createData(a, n);
		printf("排序完成，用时");
		timer.begin();
		switch (op)
		{
		case 1:insertionSort(a, n); break;
		case 2:shellSort(a, n); break;
		case 3:quickSort(a, n); break;
		case 4:mergeSort(a, n); break;
		case 5:radixSort(a, n); break;
		}

		timer.end("timer"); 
		printf("微秒\n***********************\n");
	}
	return 0;
}