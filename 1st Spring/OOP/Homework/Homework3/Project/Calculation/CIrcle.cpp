#include<iostream>
#include"Circle.h"
#include"IntegerInput.h"

using namespace std;

const double pi = 3.14159265;

int Circle::input()
{
	cout << "请输入圆的半径：" ;
	IntegerInput temp;
	temp.read();
	if(temp.inputerror==0)radius = temp.inputnum;
	return temp.inputerror;
}
void Circle::calculate()
{
	length = pi * 2 * radius;
	area = pi * radius * radius;
}
void Circle::report()
{
	cout << "该圆周长为：" << length << "，其面积为：" << area << "。" << endl;
}