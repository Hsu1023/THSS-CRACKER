#include<iostream>
#include"Square.h"
#include"IntegerInput.h"

using namespace std;

int Square::input()
{
	cout << "请输入正方形的边长：" ;
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
	cout << "该正方形周长为：" << length << "，其面积为：" << area << "。" << endl;
}