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
			cout << "��������Ƿ����޷���������" << endl;
		}
		if (inputnum * 10LL + ch - '0' > INT_MAX)
		{
			inputerror = true;
			cout << "�������볬�����㷶Χ���޷���������" << endl;
		}
		inputnum = inputnum * 10 + ch - '0';
		ch = getchar();
	}
	if (inputerror)return -1;
	return inputnum;
}