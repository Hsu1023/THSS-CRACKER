#include<iostream>
#include"Square.h"
#include"IntegerInput.h"

using namespace std;

int Square::input()
{
	cout << "�����������εı߳���" ;
	IntegerInput temp;
	temp.read();
	if (temp.inputerror == 0)edge = temp.inputnum;
	return temp.inputerror;
}
void Square::calculate()
{
	length = 4 * edge;
	area = edge*edge;
}
void Square::report()
{
	cout << "���������ܳ�Ϊ��" << length << "�������Ϊ��" << area << "��" << endl;
}