#include<iostream>
#include"Triangle.h"
#include"IntegerInput.h"

using namespace std;

const double square3 = 1.73205801;

int Triangle::input()
{
	cout << "�������������εı߳���" ;
	IntegerInput temp;
	temp.read();
	if (temp.inputerror == 0)edge = temp.inputnum;
	return temp.inputerror;
}
void Triangle::calculate()
{
	length = 3 * edge;
	area = square3 / 4 * edge*edge;
}
void Triangle::report()
{
	cout << "�����������ܳ�Ϊ��" << length << "�������Ϊ��" << area << "��" << endl;
}