#include"Controller.h"
#include<iostream>
using namespace std;

void CController::test()
{
	integer.read();
	try
	{
		int temp=integer.judge();
		cout << "���������Ϊ:" << temp;
	}
	catch (ERROR_CASE e)
	{
		switch (e)
		{
		case DOT:
		{
			cout << "�벻Ҫ����С��";
			break;
		}
		case LETTER:
		{
			cout << "�벻Ҫ���벻�Ϸ��ַ�";
			break;
		}
		case OVERF:
		{
			cout << "�������볬��int������Χ";
			break;
		}
		case MINUS:
		{
			cout << "�벻Ҫ����������";
			break;
		}
		case SPACE:
		{
			cout << "�벻Ҫͬʱ�������ַ���";
			break;
		}
		}
	}
}