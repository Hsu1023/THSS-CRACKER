#include "solution.h"
#include <iostream>

using namespace std;

// ���캯����Ϊ��Ա��������ֵ
CPointsProblem::CPointsProblem() {
	for (int i = 0; i < 4; i++) {
		m_nNumber[i] = 0;
	}
	m_bFlag = false;
}

// �������ݲ�����m_nNumber
void CPointsProblem::SetNumber() {

	for (int i = 0; i < 4; i++) {	
		int t_nReadin;
		cin >> t_nReadin;
		m_nNumber[i] = t_nReadin;
	}
}

// ��ʼ������Ⲣ�������
void CPointsProblem::Solve() {

	// ���ʽ���ĸ�����Ӧ�ľ�������
	int NumbersArray[4]; 

	// ��¼������ĸ����Ƿ񱻰�������NumbersArray�Դﵽȥ��Ч��
	bool NumbersVisited[4]; 

	// ���ʽ�������������Ӧ����������Ӽ��˳��ֱ��Ӧ0-3
	int OperationsArray[3]; 

	//	Ϊ���ϵ����鸳��ֵ
	for (int i = 0; i < 4; i++) {
		NumbersArray[i] = 0;
		NumbersVisited[i] = false;
	}
	for (int i = 0; i < 3; i++) {
		OperationsArray[i] = 0;
	}

	// ����ö��
	EnumerateNumbers(0, NumbersArray, NumbersVisited, OperationsArray);

	// �����ܴճ�24�������"no"
	if (m_bFlag == false)cout << "no";
}

/**
* �������������Ľ��
* @param a, b: �������������
* @param Operation: ������֮��������������e_Operator���Ӽ��˳���Ӧ0-3
* @return: �����������õ����ս��
*/
double Calculate(const double a, const double b, const int Operation) {
	switch (Operation)
	{
	case PLUS:
		return a + b;
	case MINUS:
		return a - b;
	case MULTIPLY:
		return a * b;
	case DIVIDE:
		return a / b;
	default:
		break;
	}
}

/**
* ͨ���������Ӧ����Ż��char���������
* @param Operation: �������Ӧ�����
* @return: char���������
* @note: ����������e_Operator�涨�ģ��Ӽ��˳���Ӧ0-3
*/
char PrintOperations(const int Operation) {
	switch (Operation)
	{
	case PLUS:
		return '+';
	case MINUS:
		return '-';
	case MULTIPLY:
		return '*';
	case DIVIDE:
		return '/';
	default:
		break;
	}
}

/**
* ö�ٱ��ʽ���ĸ�����λ�ö�Ӧ����ֵ
* @param Depth: ��ǰö�ٵ�����λ��(0-3)
* @param NumbersArray: ���ʽ���ĸ�����Ӧ�ľ�������
* @param NumbersVisited: ��¼������ĸ����Ƿ񱻰�������NumbersArray�Դﵽȥ��Ч��
* @param OperationsArray: ���ʽ�������������Ӧ����������Ӽ��˳��ֱ��Ӧ0-3
* @note:1. EnumerateNumbers�����EnumerateOperations��EnumerateOperations�����EnumeratePriority
*		2. ���������������ö�٣���λ����4���������������������ȣ�������ֹ������5��
*/
void CPointsProblem::EnumerateNumbers(int Depth, int* const NumbersArray, bool* const NumbersVisited, int* const OperationsArray){
	if (Depth == 4) {
		EnumerateOperations(0, NumbersArray, OperationsArray);
		return;
	}
	for (int i = 0; i < 4; i++) {
		if (NumbersVisited[i] == false) {
			NumbersArray[Depth] = m_nNumber[i];
			NumbersVisited[i] = true;
			EnumerateNumbers(Depth + 1, NumbersArray, NumbersVisited, OperationsArray);
			NumbersVisited[i] = false;
		}
	}
}
/**
* ö���ĸ���������������
* @param Depth: ��ǰö�ٵ�����λ��(0-3)
* @param NumbersArray: ���ʽ���ĸ�����Ӧ�ľ�������
* @param OperationsArray: ���ʽ�������������Ӧ����������Ӽ��˳��ֱ��Ӧ0-3
* @note:1. EnumerateOperations�����EnumeratePriority
*		2. ���������������ö�٣����������3���������������������ȣ�������ֹ������5��
*/
void CPointsProblem::EnumerateOperations(int Depth, int* const NumbersArray, int* const OperationsArray){
	if (Depth == 3) {
		EnumeratePriority(NumbersArray, OperationsArray);
		return;
	}
	for (int i = 0; i < 4; i++) {
		OperationsArray[Depth] = i;
		EnumerateOperations(Depth + 1, NumbersArray, OperationsArray);
	}
}
/**
* ö����������ȼ�
* @param NumbersArray: ���ʽ���ĸ�����Ӧ�ľ�������
* @param OperationsArray: ���ʽ�������������Ӧ����������Ӽ��˳��ֱ��Ӧ0-3
* @note:1. EnumerateOperations�����EnumeratePriority
*		2. ����ö�ٷ�ö����������ȼ���ö���������ŵ�λ�ã���һ����5��
*/
void CPointsProblem::EnumeratePriority(int* const NumbersArray, int* const OperationsArray){
	// ((a b) c) d
	{
		// ��һ���ȼ���������������
		double num1 = Calculate(NumbersArray[0], NumbersArray[1], OperationsArray[0]);
		// �ڶ����ȼ���������������
		double num2 = Calculate(num1, NumbersArray[2], OperationsArray[1]);
		// �������ȼ���������������
		double num3 = Calculate(num2, NumbersArray[3], OperationsArray[2]);
		if (abs(num3 - 24.0) < EPS) {
			// ���������Ϊ24������������޸�m_bFlag
			cout << "((" << NumbersArray[0] << PrintOperations(OperationsArray[0])
				<< NumbersArray[1] << ")" << PrintOperations(OperationsArray[1])
				<< NumbersArray[2] << ")" << PrintOperations(OperationsArray[2])
				<< NumbersArray[3] << endl;
			m_bFlag = true;
		}
	}

	// (a b) (c d)
	{
		double num1 = Calculate(NumbersArray[0], NumbersArray[1], OperationsArray[0]);
		double num2 = Calculate(NumbersArray[2], NumbersArray[3], OperationsArray[2]);
		double num3 = Calculate(num1, num2, OperationsArray[1]);
		if (abs(num3 - 24.0) < EPS) {
			cout << "(" << NumbersArray[0] << PrintOperations(OperationsArray[0])
				<< NumbersArray[1] << ")" << PrintOperations(OperationsArray[1]) << "("
				<< NumbersArray[2] << PrintOperations(OperationsArray[2])
				<< NumbersArray[3] << ")" << endl;
			m_bFlag = true;
		}
	}

	// (a (b c)) d
	{
		double num1 = Calculate(NumbersArray[1], NumbersArray[2], OperationsArray[1]);
		double num2 = Calculate(NumbersArray[0], num1, OperationsArray[0]);
		double num3 = Calculate(num1, NumbersArray[3], OperationsArray[2]);
		if (abs(num3 - 24.0) < EPS) {
			cout << "(" << NumbersArray[0] << PrintOperations(OperationsArray[0]) << "("
				<< NumbersArray[1] << PrintOperations(OperationsArray[1])
				<< NumbersArray[2] << "))" << PrintOperations(OperationsArray[2])
				<< NumbersArray[3] << endl;
			m_bFlag = true;
		}
	}

	// a ((b c) d)
	{
		double num1 = Calculate(NumbersArray[1], NumbersArray[2], OperationsArray[1]);
		double num2 = Calculate(num1, NumbersArray[3], OperationsArray[2]);
		double num3 = Calculate(NumbersArray[0], num2, OperationsArray[0]);
		if (abs(num3 - 24.0) < EPS) {
			cout << NumbersArray[0] << PrintOperations(OperationsArray[0]) << "(("
				<< NumbersArray[1] << PrintOperations(OperationsArray[1])
				<< NumbersArray[2] << ")" << PrintOperations(OperationsArray[2])
				<< NumbersArray[3] << ")" << endl;
			m_bFlag = true;
		}
	}

	// a (b (c d))
	{
		double num1 = Calculate(NumbersArray[2], NumbersArray[3], OperationsArray[2]);
		double num2 = Calculate(NumbersArray[1], num1, OperationsArray[1]);
		double num3 = Calculate(NumbersArray[0], num2, OperationsArray[0]);
		if (abs(num3 - 24.0) < EPS) {
			cout << NumbersArray[0] << PrintOperations(OperationsArray[0]) << "("
				<< NumbersArray[1] << PrintOperations(OperationsArray[1]) << "("
				<< NumbersArray[2] << PrintOperations(OperationsArray[2])
				<< NumbersArray[3] << "))" << endl;
			m_bFlag = true;
		}
	}
}
