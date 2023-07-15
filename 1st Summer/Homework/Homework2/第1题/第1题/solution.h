#ifndef __SOLUTION_H__
#define __SOLUTION_H__

enum e_Operator { PLUS, MINUS, MULTIPLY, DIVIDE };

class CPointsProblem {
private:
	int m_nNumber[4]; // ������ĸ���
	bool m_bFlag; // �Ƿ��ܹ��ﵽ24�㣬��Ϊtrue����Ϊfalse
public:
	const double EPS = 1e-6;
public:
	// ���캯����Ϊ��Ա��������ֵ
	CPointsProblem(); 

	// Ĭ�ϵ���������
	~CPointsProblem(){}

	// �������ݲ�����m_nNumber
	void SetNumber();

	// ��ʼ������Ⲣ�������
	void Solve();

	// ö�ٱ��ʽ���ĸ�����λ�ö�Ӧ����ֵ
	void EnumerateNumbers(int Depth, int* NumbersArray, bool* NumbersVisited, int* OperationsArray);
	
	// ö���ĸ���������������
	void EnumerateOperations(int Depth, int* NumbersArray, int* OperationsArray);

	// ö����������ȼ�
	void EnumeratePriority(int* NumbersArray, int* OperationsArray);
};

#endif // __SOLUTION_H__