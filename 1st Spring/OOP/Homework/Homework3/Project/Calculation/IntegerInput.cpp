#include <iostream>
using namespace std;
#include <climits>
#include "IntegerInput.h"

int IntegerInput::read()
{
	char ch = getchar();
	while (ch != '\n'&&ch != ' ')
	{
		if (!isdigit(ch))
		{
			inputerror = true;
			cout << "您的输入非法，无法计算结果！" << endl;
		}
		if (inputnum * 10LL + ch - '0' > INT_MAX)
		{
			inputerror = true;
			cout << "您的输入超过计算范围，无法计算结果！" << endl;
		}
		inputnum = inputnum * 10 + ch - '0';
		ch = getchar();
	}
	if (inputerror)return -1;
	return inputnum;
}