#include "solution.h"
#include <iostream>
#include <vector>

using namespace std;

// ���캯����Ϊ��Ա��������ֵ
CPointsProblem::CPointsProblem() {
	m_nCount = 0;
	m_bSolveOrNot = false;
	m_llD = 0;
	m_llMinimumNumber = -1;
}

// �������ݲ�����m_nNumber
void CPointsProblem::SetNumber() {
	cin >> m_nCount;
	cin >> m_llD;
	for (int i = 0; i < m_nCount; i++) {
		int Temp;
		cin >> Temp;
		m_Number.push_back(Temp);
	}
}

// ��ʼ������Ⲣ�������
void CPointsProblem::Solve() {

	// ���ʽ���������˳�򹹳ɵ����飬0��Ӧ+��1��Ӧ*
	bool* OperatorsArray = new bool[m_nCount];

	// ��ʼ����dfsö�������
	Enumerate(1, m_Number[0], OperatorsArray);

	// ��Ҫ��ĸ�ʽ���
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

	//ɾ��new���Ŀռ�
	delete[]OperatorsArray;
}

/**
* ö�ٱ��ʽ�и��������
* @param Depth: ��ǰö�ٵ�����λ��
* @param TempValue: ���ﵱǰλ���Ѿ���õ�ֵ
* @param OperationsArray: ���ʽ���������˳�򹹳ɵ����飬0��Ӧ+��1��Ӧ*
* @note: ���������������ö�٣���λ����(m_Count - 1)���������������������ȣ�������ֹ������m_Count��
*/
void CPointsProblem::Enumerate(int Depth, long long TempValue, bool* const OperatorsArray) {

	// dfs�߽磬��ȫ�������������������ʼ�ж��������ֵ�Ƿ���������
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

	// ö�ٵ�ǰλ��Ϊ+�����
	if (m_bSolveOrNot == false) 
	{
		OperatorsArray[Depth] = 0;
		Enumerate(Depth + 1, TempValue + m_Number[Depth], OperatorsArray);
	}

	// ö�ٵ�ǰλ��Ϊ*�����
	if (m_bSolveOrNot == false)
	{
		OperatorsArray[Depth] = 1;
		Enumerate(Depth + 1, TempValue * m_Number[Depth], OperatorsArray);
	}
}