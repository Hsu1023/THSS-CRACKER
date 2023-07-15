#include "FactoryList.h"
#include "List.h"
#include "FactoryExtend.h"
#include <iostream>
using namespace std;

void StartFactory()
{
	CStudentList* rt=CreateInstanceList(1);
	while (true)
	{
		InputHint();
		int order;
		cin >> order;
		if (order == -1)break;
		else if (order == 1)//添加若干位学生(学号 成绩)
		{
			while (true)
			{
				int newname, newscore;
				printf("请输入需要添加的学生学号(结束请输入0):");
				cin >> newname;
				if (newname == 0)break;
				printf("请输入该学生成绩:");
				cin >> newscore;
				CStudentList* newnode = CreateInstanceList(1);
				rt->insert(newname, newscore, newnode);
			}
		}
		else if (order == 2)//删除第1位指定学号的学生
		{
			int name;
			printf("请输入需要删除的学生学号:");
			cin >> name;

			CStudentList *recycle=rt->deletename(name);
			RecycleInstanceList(recycle);
		}
		else if (order == 3)//删除所有指定成绩的学生
		{
			int score;
			printf("请输入需要删除的学生成绩:");
			cin >> score;
			CStudentList *recycle = rt->deletescore(score);
			while (recycle)
			{
				RecycleInstanceList(recycle);
				recycle = rt->deletescore(score);
			}
		}
		else if (order == 4)//显示第1位指定学号的学生的成绩
		{
			int name;
			printf("请输入需要显示的学生学号:");
			cin >> name;
			rt->printname(name);
		}
		else if (order == 5)//显示所有指定成绩的学生的学号
		{
			int score;
			printf("请输入需要显示的学生成绩:");
			cin >> score;
			rt->printscore(score);
		}
		else if (order == 6)//显示所有学生信息
		{
			rt->printlist();
		}
		else printf("您的输入不合法，请重新输入!\n");
	}
}
