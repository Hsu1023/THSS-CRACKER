#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <algorithm>
#include <cmath>
#include <windows.h>

using namespace std;

typedef unsigned long long ull;
const double sqrt5 = 2.23606797749978969641;
const ull mod = 1e9+7;

ull fiboBrutal(ull n)
{
	if (n <= 2) return 1;
	return (fiboBrutal(n - 1) + fiboBrutal(n - 2)) % mod;
}
ull fiboCycle(ull n)
{
	if (n <= 2) return 1;
	ull a = 1, b = 1;
	for (ull i = 3; i <= n; i++)
	{
		b = (a + b) % mod;
		a = (b - a + mod) % mod;
	}
	return b;
}
ull fiboFormula(ull n)
{
	if (n <= 2) return 1;
	double phi1 = (1 + sqrt5) / 2;
	double phi2 = (1 - sqrt5) / 2;
	double term1 = 1.;
	double term2 = 1.;

	while (n)
	{
		if (n & 1) term1 *= phi1, term2 *= phi2;
		phi1 *= phi1;
		phi2 *= phi2;
		n >>= 1;
	}
	return ull(round(term1 / sqrt5 - term2 / sqrt5))%mod;
}
void matrixMul(ull a[2][2], ull b[2][2])
{
	ull temp[2][2]{ {0,0},{0,0} };
	for (int i = 0; i < 2; i++)
		for (int j = 0; j < 2; j++) {
			for (int k = 0; k < 2; k++) {
				temp[i][j] = (temp[i][j] + a[i][k] * b[k][j]) % mod;
			}
		}
	for (int i = 0; i < 2; i++)
		for (int j = 0; j < 2; j++)
			a[i][j] = temp[i][j];
}
ull fiboMatrix(ull n)
{
	ull a[2][2]{ {1,0},{0,1} };
	ull pow[2][2]{ {1,1},{1,0} };
	while (n)
	{
		if (n & 1)	matrixMul(a, pow);
		matrixMul(pow, pow);
		n >>= 1;
	}
	return a[1][0];
}

class Timer{
private:
	_LARGE_INTEGER beginTime, endTime;
	double freq;
	ull scale;
public:
	Timer(){
		scale = 0;
		LARGE_INTEGER f;
		QueryPerformanceFrequency(&f);
		freq = (double)f.QuadPart;
	}
private:
	void begin() {
		QueryPerformanceCounter(&beginTime);
	}
	void end(std::string order) {
		QueryPerformanceCounter(&endTime);
		if(order == "timer")
			cout << (endTime.QuadPart - beginTime.QuadPart) / freq * 1000000 << endl;
	}
public:
	void setScale(ull n){
		scale = n;
	}
public:
	void exe(ull(*f)(ull), std::string order){
		begin();
		if(order == "result") cout << f(scale) << endl;
		else f(scale);
		end(order);
	}
}t;

int main(){
	for (ull i = 1; i <= 40; i++){
		t.setScale(i);
		std::string order = "timer"; //result or timer
		t.exe(fiboBrutal, order);
		t.exe(fiboCycle, order);
		t.exe(fiboFormula, order);
		t.exe(fiboMatrix, order);
	}
	system("pause");
	return 0;
}