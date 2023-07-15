#include"UnionDoubleLL.h"
#include<iostream>
#include<bitset>
using namespace std;

void gb_run()
{
	while (true)
	{
		cout << "请输入指令序号\n";
		cout << "1-输入双精浮点数得到内存中的二进制表示\n";
		cout << "2-输出双精度浮点数“非数”在内存中的二进制表示形式\n";
		cout << "0-退出\n";
		int op;
		cin >> op;
		if (op == 0)break;
		else if (op == 1)
		{
			double d;
			cin >> d;
			U_DoubleLL temp(d);
			cout << temp.m_double<<"的二进制表示为：\n";
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
		else  cout << "输入有误，请重新输入\n";
	}
}