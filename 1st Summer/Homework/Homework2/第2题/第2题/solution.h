#ifndef __SOLUTION_H__
#define __SOLUTION_H__

#include <vector>
class CPointsProblem {
public:
	int m_nCount; // ������������ĸ���n
	std::vector<int> m_Number; // ��������������ɵ�vector
	bool m_bSolveOrNot; // ��¼�Ƿ��ܹ��ճ�D����Ϊtrue����Ϊfalse
	long long m_llD; // ��Ŀ��D��ֵ
	long long m_llMinimumNumber; // �ܹ��ճɵĴ���D����Сֵ
public:
	// ���캯����Ϊ��Ա��������ֵ
	CPointsProblem();

	// Ĭ�ϵ���������
	~CPointsProblem() {}

	// �������ݲ�����m_nNumber
	void SetNumber();

	// ��ʼ������Ⲣ�������
	void Solve();

	// ö�ٱ��ʽ�и��������
	void Enumerate(int Depth, long long TempValue, bool* OperatorsArray);
};

#endif // __SOLUTION_H__