#include "Array.h"
#include "Controller.h"
#include<iostream>
using namespace std;

void controller::m_run()
{
	a.m_input();
	while (true)
	{
		//cout << "�����������ţ�1-����������������2-����ȥ������������,3-�˳�" << endl;
		int op;
		cin >> op;
		if (op == 1)a.m_sort();
		else if (op == 2)a.m_set();
		else if (op == 3)break;
		//else cout << "������������������";
	}
}