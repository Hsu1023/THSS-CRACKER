#include"Controller.h"
#include<iostream>
using namespace std;

void CController::test()
{
	integer.read();
	try
	{
		int temp=integer.judge();
		cout << "输入的整数为:" << temp;
	}
	catch (ERROR_CASE e)
	{
		switch (e)
		{
		case DOT:
		{
			cout << "请不要输入小数";
			break;
		}
		case LETTER:
		{
			cout << "请不要输入不合法字符";
			break;
		}
		case OVERF:
		{
			cout << "您的输入超过int整数范围";
			break;
		}
		case MINUS:
		{
			cout << "请不要输入多个负号";
			break;
		}
		case SPACE:
		{
			cout << "请不要同时输入多个字符串";
			break;
		}
		}
	}
}