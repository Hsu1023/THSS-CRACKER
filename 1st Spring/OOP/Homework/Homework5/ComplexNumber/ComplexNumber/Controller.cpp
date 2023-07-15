#include"Controller.h"
#include"Complex.h"
#include<iostream>
using namespace std;
void controller::run()
{
	cout << "**************\n欢迎使用复数计算器！\n";
	cout << "**************" << endl;
	while (true)
	{
		cout << "下面可以测试该计算器的各个模块:\n";
		cout << "1-加法\t2-减法\t3-乘法\t4-除法\n5-自增1\t6-自增2\t7-自减1\t8-自减2\n";
		int op;
		cin >> op;
		if (op <= 4)
		{
			complex a, b;
			cout << "请输入第一个复数";
			cin >> a;
			cout << "请输入第二个复数";
			cin >> b;
			complex res;
			if (op == 1)res = a + b;
			else if (op == 2)res = a - b;
			else if (op == 3)res = a * b;
			else if (op == 4)res = a / b;
			cout << res<<endl;
		}
		else
		{
			complex a;
			cout << "请输入一个复数";
			cin >> a;
			if (op == 5)++a;
			else if (op == 6)a++;
			else if (op == 7)--a;
			else if (op == 8)a--;
			cout<<a<<endl;
		}
	}
}