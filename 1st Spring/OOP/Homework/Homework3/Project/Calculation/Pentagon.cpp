#include<iostream>
#include"Pentagon.h"
#include"IntegerInput.h"

using namespace std;

const double sin72=0.95105652;

int Pentagon::input()
{
	cout << "����������εı߳���" ;
	IntegerInput temp;
	temp.read();
	if (temp.inputerror == 0)edge = temp.inputnum;
	return temp.inputerror;
}
void Pentagon::calculate()
{
	length = 5 * edge;
	area = sin72*5/2*edge*edge;
}
void Pentagon::report()
{
	cout << "����������ܳ�Ϊ��" << length << "�������Ϊ��" << area << "��" << endl;
}