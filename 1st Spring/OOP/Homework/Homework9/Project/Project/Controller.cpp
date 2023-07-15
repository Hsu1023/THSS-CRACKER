#include "Array.h"
#include "Controller.h"
#include<iostream>
using namespace std;

void controller::m_run()
{
	a.m_input();
	while (true)
	{
		//cout << "请输入操作序号，1-整数排序并输入结果，2-整数去重排序并输出结果,3-退出" << endl;
		int op;
		cin >> op;
		if (op == 1)a.m_sort();
		else if (op == 2)a.m_set();
		else if (op == 3)break;
		//else cout << "输入有误，请重新输入";
	}
}