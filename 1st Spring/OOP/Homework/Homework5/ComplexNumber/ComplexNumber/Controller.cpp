#include"Controller.h"
#include"Complex.h"
#include<iostream>
using namespace std;
void controller::run()
{
	cout << "**************\n��ӭʹ�ø�����������\n";
	cout << "**************" << endl;
	while (true)
	{
		cout << "������Բ��Ըü������ĸ���ģ��:\n";
		cout << "1-�ӷ�\t2-����\t3-�˷�\t4-����\n5-����1\t6-����2\t7-�Լ�1\t8-�Լ�2\n";
		int op;
		cin >> op;
		if (op <= 4)
		{
			complex a, b;
			cout << "�������һ������";
			cin >> a;
			cout << "������ڶ�������";
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
			cout << "������һ������";
			cin >> a;
			if (op == 5)++a;
			else if (op == 6)a++;
			else if (op == 7)--a;
			else if (op == 8)a--;
			cout<<a<<endl;
		}
	}
}