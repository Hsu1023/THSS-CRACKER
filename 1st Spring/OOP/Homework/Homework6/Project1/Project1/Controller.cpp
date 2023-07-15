#include<iostream>
#include<cstdio>
#include<cstdlib>
#include"Controller.h"

using namespace std;

void controller::run()
{
	list *rt = new list;
	while (true)
	{
		printf("***********************\n指令1  添加若干位学生(学号 成绩)，以0结束\n指令2  删除第1位指定学号的学生\n指令3  删除所有指定成绩的学生\n指令4  显示第1位指定学号的学生的成绩\n指令5  显示所有指定成绩的学生的学号\n指令6  显示所有学生信息\n指令-1 退出\n请输入指令序号，以回车键结尾：");
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
				rt->insert(newname, newscore);
			}
		}
		else if (order == 2)//删除第1位指定学号的学生
		{
			int name;
			printf("请输入需要删除的学生学号:");
			cin >> name;
			rt->deletename(name);
		}
		else if (order == 3)//删除所有指定成绩的学生
		{
			int score;
			printf("请输入需要删除的学生成绩:");
			cin >> score;
			rt->deletescore(score);
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