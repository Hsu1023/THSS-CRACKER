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
		else if (order == 1)//�������λѧ��(ѧ�� �ɼ�)
		{
			while (true)
			{
				int newname, newscore;
				printf("��������Ҫ��ӵ�ѧ��ѧ��(����������0):");
				cin >> newname;
				if (newname == 0)break;
				printf("�������ѧ���ɼ�:");
				cin >> newscore;
				CStudentList* newnode = CreateInstanceList(1);
				rt->insert(newname, newscore, newnode);
			}
		}
		else if (order == 2)//ɾ����1λָ��ѧ�ŵ�ѧ��
		{
			int name;
			printf("��������Ҫɾ����ѧ��ѧ��:");
			cin >> name;

			CStudentList *recycle=rt->deletename(name);
			RecycleInstanceList(recycle);
		}
		else if (order == 3)//ɾ������ָ���ɼ���ѧ��
		{
			int score;
			printf("��������Ҫɾ����ѧ���ɼ�:");
			cin >> score;
			CStudentList *recycle = rt->deletescore(score);
			while (recycle)
			{
				RecycleInstanceList(recycle);
				recycle = rt->deletescore(score);
			}
		}
		else if (order == 4)//��ʾ��1λָ��ѧ�ŵ�ѧ���ĳɼ�
		{
			int name;
			printf("��������Ҫ��ʾ��ѧ��ѧ��:");
			cin >> name;
			rt->printname(name);
		}
		else if (order == 5)//��ʾ����ָ���ɼ���ѧ����ѧ��
		{
			int score;
			printf("��������Ҫ��ʾ��ѧ���ɼ�:");
			cin >> score;
			rt->printscore(score);
		}
		else if (order == 6)//��ʾ����ѧ����Ϣ
		{
			rt->printlist();
		}
		else printf("�������벻�Ϸ�������������!\n");
	}
}
