#include <iostream>
using namespace std;
#include <climits>
#include "CP_IntegerInput.h"

int CP_IntegerInput::mb_getinputnumber()
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