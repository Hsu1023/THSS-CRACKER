#ifndef __SOLUTION_H__
#define __SOLUTION_H__

#include <vector>
class CPointsProblem {
public:
	int m_nCount; // 参与运算的数的个数n
	std::vector<int> m_Number; // 参与运算的数构成的vector
	bool m_bSolveOrNot; // 记录是否能够凑成D，能为true，否为false
	long long m_llD; // 题目中D的值
	long long m_llMinimumNumber; // 能够凑成的大于D的最小值
public:
	// 构造函数，为成员变量赋初值
	CPointsProblem();

	// 默认的析构函数
	~CPointsProblem() {}

	// 读入数据并赋给m_nNumber
	void SetNumber();

	// 开始解决问题并给出输出
	void Solve();

	// 枚举表达式中各个运算符
	void Enumerate(int Depth, long long TempValue, bool* OperatorsArray);
};

#endif // __SOLUTION_H__