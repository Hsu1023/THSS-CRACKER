#include<iostream>
#include"Hexagon.h"
#include"IntegerInput.h"

using namespace std;

const double square3 = 1.73205081;

int Hexagon::input()
{
	cout << "�������������εı߳���" ;
	IntegerInput temp;
	temp.read();
	if (temp.inputerror == 0)edge = temp.inputnum;
	return temp.inputerror;
}
void Hexagon::calculate()
{
	length = 6 * edge;
	area = square3 * 3  * edge*edge;
}
void Hexagon::report()
{
	cout << "�����������ܳ�Ϊ��" << length << "�������Ϊ��" << area << "��" << endl;
}