#include <iostream>
#include <time.h>
using namespace std;

// 将数据与计算封装成一个CCalculator类
class CCalculator {
public:
	// N可以被更改
	static const int N = 512;	// N = 64, 128, 256 or 512

public:
	// 按照要求进行循环运算并计时
	void Calculate() const;
};

// 按照要求进行循环运算并计时
void CCalculator::Calculate() const{
	// 声明静态变量数组
	static int a[N][N][N], b[N][N][N], c[N][N][N];

	// 在循环前后分别获得当前时间，start为初始时间，finish为结束时间
	// 三个循环的顺序可被手动改变
	int start = clock();
	for (int i = 0; i < N; i++) {
		for (int j = 0; j < N; j++) {
			for (int k = 0; k < N; k++) {
				a[i][j][k] = b[i][j][k] + c[i][j][k];
			}
		}
	}
	int finish = clock();

	// 查询CLOCKS_PER_SEC值为1000，则获取的finish结束时间和start初始时间单位均为微秒
	// finish - start 获得循环的运行时间
	cout << finish - start << ' ';
}

int main()
{
	// 声明对象并调用过程
	CCalculator t_Calculator;
	t_Calculator.Calculate();

	return 0;
}