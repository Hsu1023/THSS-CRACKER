#include"UnionDoubleLL.h"
#include<iostream>
#include<bitset>
using namespace std;

void gb_run()
{
	while (true)
	{
		cout << "������ָ�����\n";
		cout << "1-����˫���������õ��ڴ��еĶ����Ʊ�ʾ\n";
		cout << "2-���˫���ȸ����������������ڴ��еĶ����Ʊ�ʾ��ʽ\n";
		cout << "0-�˳�\n";
		int op;
		cin >> op;
		if (op == 0)break;
		else if (op == 1)
		{
			double d;
			cin >> d;
			U_DoubleLL temp(d);
			cout << temp.m_double<<"�Ķ����Ʊ�ʾΪ��\n";
			cout << bitset<64>(temp.m_ll);
			cout << endl;
		}
		else if (op == 2)
		{
			U_DoubleLL temp(0.0);
			temp.m_double = (double)0.0 / temp.m_double;
			cout << bitset<64> (temp.m_ll);
			cout << endl;
		}
		else  cout << "������������������\n";
	}
}