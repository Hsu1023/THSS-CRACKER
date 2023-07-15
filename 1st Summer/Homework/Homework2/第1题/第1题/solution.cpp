#include "solution.h"
#include <iostream>

using namespace std;

// 构造函数，为成员变量赋初值
CPointsProblem::CPointsProblem() {
	for (int i = 0; i < 4; i++) {
		m_nNumber[i] = 0;
	}
	m_bFlag = false;
}

// 读入数据并赋给m_nNumber
void CPointsProblem::SetNumber() {

	for (int i = 0; i < 4; i++) {	
		int t_nReadin;
		cin >> t_nReadin;
		m_nNumber[i] = t_nReadin;
	}
}

// 开始解决问题并给出输出
void CPointsProblem::Solve() {

	// 表达式中四个数对应的具体数字
	int NumbersArray[4]; 

	// 记录输入的四个数是否被包含进了NumbersArray以达到去重效果
	bool NumbersVisited[4]; 

	// 表达式中三个运算符对应的运算符，加减乘除分别对应0-3
	int OperationsArray[3]; 

	//	为以上的数组赋初值
	for (int i = 0; i < 4; i++) {
		NumbersArray[i] = 0;
		NumbersVisited[i] = false;
	}
	for (int i = 0; i < 3; i++) {
		OperationsArray[i] = 0;
	}

	// 进入枚举
	EnumerateNumbers(0, NumbersArray, NumbersVisited, OperationsArray);

	// 若不能凑成24点则输出"no"
	if (m_bFlag == false)cout << "no";
}

/**
* 获得两个数运算的结果
* @param a, b: 欲运算的两个数
* @param Operation: 两个数之间的运算符，参照e_Operator，加减乘除对应0-3
* @return: 两个数运算获得的最终结果
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
* 通过运算符对应的序号获得char类型运算符
* @param Operation: 运算符对应的序号
* @return: char类型运算符
* @note: 运算符序号是e_Operator规定的，加减乘除对应0-3
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
* 枚举表达式中四个数的位置对应的数值
* @param Depth: 当前枚举的数的位置(0-3)
* @param NumbersArray: 表达式中四个数对应的具体数字
* @param NumbersVisited: 记录输入的四个数是否被包含进了NumbersArray以达到去重效果
* @param OperationsArray: 表达式中三个运算符对应的运算符，加减乘除分别对应0-3
* @note:1. EnumerateNumbers会调用EnumerateOperations，EnumerateOperations会调用EnumeratePriority
*		2. 采用深度优先搜索枚举；数位共有4个，故深度优先搜索的深度（包含终止）共有5层
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
* 枚举四个数间的三个运算符
* @param Depth: 当前枚举的数的位置(0-3)
* @param NumbersArray: 表达式中四个数对应的具体数字
* @param OperationsArray: 表达式中三个运算符对应的运算符，加减乘除分别对应0-3
* @note:1. EnumerateOperations会调用EnumeratePriority
*		2. 采用深度优先搜索枚举；运算符共有3个，故深度优先搜索的深度（包含终止）共有5层
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
* 枚举运算的优先级
* @param NumbersArray: 表达式中四个数对应的具体数字
* @param OperationsArray: 表达式中三个运算符对应的运算符，加减乘除分别对应0-3
* @note:1. EnumerateOperations会调用EnumeratePriority
*		2. 采用枚举法枚举运算的优先级（枚举两个括号的位置），一共有5种
*/
void CPointsProblem::EnumeratePriority(int* const NumbersArray, int* const OperationsArray){
	// ((a b) c) d
	{
		// 第一优先级运算符算出来的数
		double num1 = Calculate(NumbersArray[0], NumbersArray[1], OperationsArray[0]);
		// 第二优先级运算符算出来的数
		double num2 = Calculate(num1, NumbersArray[2], OperationsArray[1]);
		// 第三优先级运算符算出来的数
		double num3 = Calculate(num2, NumbersArray[3], OperationsArray[2]);
		if (abs(num3 - 24.0) < EPS) {
			// 如果运算结果为24，则输出并且修改m_bFlag
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
