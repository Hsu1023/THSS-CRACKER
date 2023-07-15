#include <iostream>
using namespace std;
#include <climits>
#include "CP_IntegerInput.h"

int CP_IntegerInput::mb_getinputnumber()
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