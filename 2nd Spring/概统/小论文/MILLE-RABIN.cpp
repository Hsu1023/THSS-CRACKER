#include <random>
#include <cstdio>
#include <cstdlib>
#include <algorithm>
#include <ctime>

using namespace std;

int cnt;
int isComposite[100000005],prime[50000005];

void linear_shaker(int n = 100000000)
{
	isComposite[1] = true;
	for(int i = 2; i <= n; i++)
	{
		if(!isComposite[i])
			prime[++cnt] = i;
		for(int j = 1; j <= cnt && (i * prime[j]) <= n; j++)
		{
			isComposite[prime[j] * i] = true;
			if(i % prime[j] == 0)break;
		}
	}
}
int POW(int a, int b, int mod)
{
	a %= mod, b %= mod;
	int res = 1, now = a, pos = b;
	while(pos)
	{
		if(pos & 1)
			res = (1LL * now * res) % mod;
		now = (1LL * now * now) % mod;
		pos >>= 1;
	}
	return res;
}
bool brutalJudge(int n)
{
	for(int i = 2; i <= sqrt(n); i++)
	{
		if(n % i == 0) return true;
	}
	return false;
}


bool WITNESS(int a, int n)
{
	int u = n - 1, t = 0;
	while(u & 1)
		u >>= 1, t++;
	int a_u = POW(a, u, n);
	if(a_u % n == 1)
		return false;
	for (int i = 0; i < t; i++)
	{
		if(a_u % n == n - 1)
			return false;
		a_u = POW(a_u, 2, n);
	}
	return true;
}

bool MilleRabinJudge(int n, int  t)
{
	static int ran = 0;
	ran++;
	std::default_random_engine e;
	std::uniform_int_distribution<int> u(2, n);
	e.seed(time(0) + ran);

	while(t--)
		if(WITNESS(u(e), n))
			return true;
	return false;
}

int main()
{
	std::default_random_engine e;
	std::uniform_int_distribution<int> u(1, 49999999);
	e.seed(time(0) + 123);
	
	linear_shaker();
	clock_t start, finish;

	start = clock();
	int err = 0, total = 0;
	for (int i = 1; i <= 10000000; i++)
	{
		int t = 2 * u(e) + 1;

		if (isComposite[t])
		{
			total++;
			if (MilleRabinJudge(t, 1) != isComposite[t])
				err++;
		}
	}
	finish = clock();

	printf("MILLE-RABIN: %.3f s, wrond answers rate: %llf\n", 1.0 * (finish - start) / CLOCKS_PER_SEC, 1e5* err/total );

	/*
		start = clock();
		for (int i = 99999999; i >= 98999999; i -= 2)
		{
			brutalJudge(i);
		}
		finish = clock();
		printf("NAIVE-METHOD: %.3f s\n", 1.0 * (finish - start) / CLOCKS_PER_SEC);
	*/

	return 0;
}
