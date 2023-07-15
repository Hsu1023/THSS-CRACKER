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
	cout << "共计输入了"<<count << "个图形。" << endl;
	cout << "其总周长为：" << length << "，其总面积为：" << area <<"。"<< endl;
	cout << "本程序即将退出，感谢您的使用，再见！" << endl;
}
void Controller::loop()
{
	while (true)
	{
		cout << "请输入指令序号：" ;
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
			cout << "您输入的编号有误，请重新输入！" << endl;
		}
	}
}
void Controller::start()
{
	loop();
	report();
}