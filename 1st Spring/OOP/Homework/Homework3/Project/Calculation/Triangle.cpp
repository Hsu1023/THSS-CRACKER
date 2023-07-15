#include<iostream>
#include"Triangle.h"
#include"IntegerInput.h"

using namespace std;

const double square3 = 1.73205801;

int Triangle::input()
{
	cout << "请输入正三角形的边长：" ;
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
	cout << "该正三角形周长为：" << length << "，其面积为：" << area << "。" << endl;
}