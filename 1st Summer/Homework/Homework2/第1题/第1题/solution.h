#ifndef __SOLUTION_H__
#define __SOLUTION_H__

enum e_Operator { PLUS, MINUS, MULTIPLY, DIVIDE };

class CPointsProblem {
private:
	int m_nNumber[4]; // 输入的四个数
	bool m_bFlag; // 是否能够达到24点，是为true，否为false
public:
	const double EPS = 1e-6;
public:
	// 构造函数，为成员变量赋初值
	CPointsProblem(); 

	// 默认的析构函数
	~CPointsProblem(){}

	// 读入数据并赋给m_nNumber
	void SetNumber();

	// 开始解决问题并给出输出
	void Solve();

	// 枚举表达式中四个数的位置对应的数值
	void EnumerateNumbers(int Depth, int* NumbersArray, bool* NumbersVisited, int* OperationsArray);
	
	// 枚举四个数间的三个运算符
	void EnumerateOperations(int Depth, int* NumbersArray, int* OperationsArray);

	// 枚举运算的优先级
	void EnumeratePriority(int* NumbersArray, int* OperationsArray);
};

#endif // __SOLUTION_H__