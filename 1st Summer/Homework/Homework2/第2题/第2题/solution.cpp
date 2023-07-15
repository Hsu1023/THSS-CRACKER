#include "solution.h"
#include <iostream>
#include <vector>

using namespace std;

// 构造函数，为成员变量赋初值
CPointsProblem::CPointsProblem() {
	m_nCount = 0;
	m_bSolveOrNot = false;
	m_llD = 0;
	m_llMinimumNumber = -1;
}

// 读入数据并赋给m_nNumber
void CPointsProblem::SetNumber() {
	cin >> m_nCount;
	cin >> m_llD;
	for (int i = 0; i < m_nCount; i++) {
		int Temp;
		cin >> Temp;
		m_Number.push_back(Temp);
	}
}

// 开始解决问题并给出输出
void CPointsProblem::Solve() {

	// 表达式中运算符按顺序构成的数组，0对应+，1对应*
	bool* OperatorsArray = new bool[m_nCount];

	// 开始利用dfs枚举运算符
	Enumerate(1, m_Number[0], OperatorsArray);

	// 按要求的格式输出
	if (m_bSolveOrNot == true) {
		cout << m_Number[0];
		for (int i = 1; i < m_nCount; i++) {
			if (OperatorsArray[i]) {
				cout << '*';
			}
			else {
				cout << '+';
			}
			cout << m_Number[i];
		}
	}
	else {
		cout << "No" << endl << m_llMinimumNumber;
	}

	//删除new出的空间
	delete[]OperatorsArray;
}

/**
* 枚举表达式中各个运算符
* @param Depth: 当前枚举的数的位置
* @param TempValue: 到达当前位置已经获得的值
* @param OperationsArray: 表达式中运算符按顺序构成的数组，0对应+，1对应*
* @note: 采用深度优先搜索枚举；数位共有(m_Count - 1)个，故深度优先搜索的深度（包含终止）共有m_Count层
*/
void CPointsProblem::Enumerate(int Depth, long long TempValue, bool* const OperatorsArray) {

	// dfs边界，若全部运算符都已填满，则开始判断运算出的值是否满足题意
	if (Depth == m_nCount) {
		if (TempValue == m_llD) {
			m_bSolveOrNot = true;
		}
		if (TempValue > m_llD) {
			if (m_llMinimumNumber == -1 || m_llMinimumNumber > TempValue) {
				m_llMinimumNumber = TempValue;
			}
		}
		return;
	}	

	// 枚举当前位置为+的情况
	if (m_bSolveOrNot == false) 
	{
		OperatorsArray[Depth] = 0;
		Enumerate(Depth + 1, TempValue + m_Number[Depth], OperatorsArray);
	}

	// 枚举当前位置为*的情况
	if (m_bSolveOrNot == false)
	{
		OperatorsArray[Depth] = 1;
		Enumerate(Depth + 1, TempValue * m_Number[Depth], OperatorsArray);
	}
}