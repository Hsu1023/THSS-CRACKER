#include <iostream>
using namespace std;
#include <climits>
#include "IntegerSum.h"

int SolveIntegerSum::GetInputNumber()
{
	cout << "请输入一个正整数：";
	char ch = getchar();
	while (ch != '\n'&&ch != ' ')
	{
		if (!isdigit(ch))
		{
			inputerror = true;
			cout << "您的输入非法，无法计算结果！"<<endl;
			return -1;
		}
		if (inputnum * 10LL + ch - '0' > INT_MAX)
		{
			inputerror = true;
			cout << "您的输入超过计算范围，无法计算结果！"<<endl;
			return -1;
		}
		inputnum = inputnum * 10 + ch - '0';
		ch = getchar();
	}
	if(inputnum<=0)
	{
		inputerror = true;
		cout << "您的输入非法，无法计算结果！" << endl;
		return -1;
	}
	return inputnum;
}
int SolveIntegerSum::GetResult1()
{
	if (1.0*(inputnum / 2)/2*(2 + (inputnum / 2) * 2) > 1.0 *INT_MAX)
	{
		cout << "第一种计算方法结果超过范围，无法计算结果！" << endl;
		return -1;
	}
	result1 = (2 + (inputnum / 2) * 2) / 2 * (inputnum / 2);
	cout << "第一种计算方法结果为：" << result1 << endl;
	return result1;
}
int SolveIntegerSum::GetResult2()
{
	for (int i = 2;i <= inputnum;i += 2)
	{
		if (1LL*result2 + i > INT_MAX)
		{
			cout << "第二种计算方法结果超过范围，无法计算结果！" << endl;
			return -1;
		}
		result2 += i;
	}
	cout << "第二种计算方法结果为：" << result2 << endl;
	return result2;
}