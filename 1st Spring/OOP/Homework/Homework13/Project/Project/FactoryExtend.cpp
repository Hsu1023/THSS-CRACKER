#include"FactoryExtend.h"
#include"List.h"
#include"FactoryList.h"
#include<iostream>
using namespace std;

void InputHint()
{
	cout << "***********************\n";
	cout << "指令1  添加若干位学生(学号 成绩)，以0结束\n";
	cout << "指令2  删除第1位指定学号的学生\n";
	cout << "指令3  删除所有指定成绩的学生\n";
	cout << "指令4  显示第1位指定学号的学生的成绩\n";
	cout << "指令5  显示所有指定成绩的学生的学号\n";
	cout << "指令6  显示所有学生信息\n";
	cout << "指令-1 退出\n";
	cout << "请输入指令序号，以回车键结尾：";
}

CFactoryList frt;

CStudentList* CreateInstanceList(int ID)
{
	if (ID == 1)
		return frt.CreateInstance();
}
void RecycleInstanceList(CStudentList* garbage)
{
	frt.RecycleInstance(garbage);
}