#include <iostream>
using namespace std;
#include <climits>
#include "IntegerSum.h"

int SolveIntegerSum::GetInputNumber()
{
	cout << "������һ����������";
	char ch = getchar();
	while (ch != '\n'&&ch != ' ')
	{
		if (!isdigit(ch))
		{
			inputerror = true;
			cout << "��������Ƿ����޷���������"<<endl;
			return -1;
		}
		if (inputnum * 10LL + ch - '0' > INT_MAX)
		{
			inputerror = true;
			cout << "�������볬�����㷶Χ���޷���������"<<endl;
			return -1;
		}
		inputnum = inputnum * 10 + ch - '0';
		ch = getchar();
	}
	if(inputnum<=0)
	{
		inputerror = true;
		cout << "��������Ƿ����޷���������" << endl;
		return -1;
	}
	return inputnum;
}
int SolveIntegerSum::GetResult1()
{
	if (1.0*(inputnum / 2)/2*(2 + (inputnum / 2) * 2) > 1.0 *INT_MAX)
	{
		cout << "��һ�ּ��㷽�����������Χ���޷���������" << endl;
		return -1;
	}
	result1 = (2 + (inputnum / 2) * 2) / 2 * (inputnum / 2);
	cout << "��һ�ּ��㷽�����Ϊ��" << result1 << endl;
	return result1;
}
int SolveIntegerSum::GetResult2()
{
	for (int i = 2;i <= inputnum;i += 2)
	{
		if (1LL*result2 + i > INT_MAX)
		{
			cout << "�ڶ��ּ��㷽�����������Χ���޷���������" << endl;
			return -1;
		}
		result2 += i;
	}
	cout << "�ڶ��ּ��㷽�����Ϊ��" << result2 << endl;
	return result2;
}