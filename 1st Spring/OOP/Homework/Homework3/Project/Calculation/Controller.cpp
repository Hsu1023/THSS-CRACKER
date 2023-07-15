#include"Controller.h"
#include"IntegerInput.h"
#include"Circle.h"
#include"Hexagon.h"
#include"Pentagon.h"
#include"Square.h"
#include"Triangle.h"
#include<iostream>

using namespace std;

void Controller::report()
{
	cout << "����������"<<count << "��ͼ�Ρ�" << endl;
	cout << "�����ܳ�Ϊ��" << length << "���������Ϊ��" << area <<"��"<< endl;
	cout << "�����򼴽��˳�����л����ʹ�ã��ټ���" << endl;
}
void Controller::loop()
{
	while (true)
	{
		cout << "������ָ����ţ�" ;
		IntegerInput temp;
		temp.read();
		if (temp.inputerror)continue;
		if (temp.inputnum == 0)break;
		else if(temp.inputnum == 1)
		{
			Triangle figure;
			if(figure.input())continue;
			figure.calculate();
			count++;
			area += figure.area;
			length += figure.length;
			figure.report();
		}
		else if (temp.inputnum == 2)
		{
			Square figure;
			if (figure.input() )continue;
			figure.calculate();
			count++;
			area += figure.area;
			length += figure.length;
			figure.report();
		}
		else if (temp.inputnum == 3)
		{
			Pentagon figure;
			if (figure.input() )continue;
			figure.calculate();
			count++;
			area += figure.area;
			length += figure.length;
			figure.report();
		}
		else if (temp.inputnum == 4)
		{
			Hexagon figure;
			if (figure.input() )continue;
			figure.calculate();
			count++;
			area += figure.area;
			length += figure.length;
			figure.report();
		}
		else if (temp.inputnum == 5)
		{
			Circle figure;
			if (figure.input() )continue;
			figure.calculate();
			count++;
			area += figure.area;
			length += figure.length;
			figure.report();
		}
		else
		{
			cout << "������ı���������������룡" << endl;
		}
	}
}
void Controller::start()
{
	loop();
	report();
}