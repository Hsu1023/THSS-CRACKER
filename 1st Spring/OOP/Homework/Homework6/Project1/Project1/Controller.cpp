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
		printf("***********************\nָ��1  �������λѧ��(ѧ�� �ɼ�)����0����\nָ��2  ɾ����1λָ��ѧ�ŵ�ѧ��\nָ��3  ɾ������ָ���ɼ���ѧ��\nָ��4  ��ʾ��1λָ��ѧ�ŵ�ѧ���ĳɼ�\nָ��5  ��ʾ����ָ���ɼ���ѧ����ѧ��\nָ��6  ��ʾ����ѧ����Ϣ\nָ��-1 �˳�\n������ָ����ţ��Իس�����β��");
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
				rt->insert(newname, newscore);
			}
		}
		else if (order == 2)//ɾ����1λָ��ѧ�ŵ�ѧ��
		{
			int name;
			printf("��������Ҫɾ����ѧ��ѧ��:");
			cin >> name;
			rt->deletename(name);
		}
		else if (order == 3)//ɾ������ָ���ɼ���ѧ��
		{
			int score;
			printf("��������Ҫɾ����ѧ���ɼ�:");
			cin >> score;
			rt->deletescore(score);
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