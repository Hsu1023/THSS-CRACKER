#include"List.h"
#include<iostream>

using namespace std;

list::~list()
{
	if (next == NULL)return;
	pre->next = NULL;
	delete next;
}
//pre==NULL �޽ڵ�
//pre==this һ���ڵ�
void list::insert(int newname, int newscore)
{
	if (pre == NULL) {//�������޽ڵ�
		name = newname;
		score = newscore;
		pre = next = this;
		return;
	}
	list *p = this;
	list *newnode = new list;
	do
	{
		if (newname < p->name)
		{
			if (p == this)//��Ϊͷ���
			{
				swap(newname, name);
				swap(newscore, score);
			}
			else//�����м���
			{
				newnode->pre = p->pre;
				newnode->next = p;
				p->pre->next = newnode;
				p->pre = newnode;
				newnode->name = newname;
				newnode->score = newscore;
				return;
			}
		}
		p = p->next;
	} while (p != this);
	//����β�ڵ�
	newnode->next = this;
	newnode->pre = pre;
	pre->next = newnode;
	pre = newnode;
	newnode->name = newname;
	newnode->score = newscore;
}
void list::deletename(int key)
{
	if (pre == NULL)return;
	list *p = this;
	do
	{
		if (p->name == key)//ɾ������ͷ���
		{
			if (p == this)//ֻ��һ���ڵ�
			{
				if (p->pre == this)
				{
					score = 0;
					name = 0;
					pre = NULL;
					return;
				}
				else //����ڵ�
				{
					swap(name, next->name);
					swap(score, next->score);
				}
			}
			else//ɾ�������м���
			{
				p->pre->next = p->next;
				p->next->pre = p->pre;
				p->pre = p->next = NULL;
				delete p;
				return;
			}
		}
		p = p->next;
	} while (p != this);
}
void list::deletescore(int key)
{
	if (pre == NULL)return;
	bool flag = true;
	while (true)
	{
		list *p = this;
		do{
			list *temp = p->next;
			if (p->score == key)
			{
				deletename(p->name);
				break;
			}
			p = p->next;
			if (p == this)flag = false;
		} while (p != this);
		if (!flag)break;
	}
}
void list::printlist()
{
	list *p = this;
	if (pre == NULL) {
		printf("ϵͳ����ѧ��!\n");
		return;
	}
	do
	{
		printf("ѧ��%d��ѧ���ɼ�Ϊ: %d\n",p->name,p->score);
		p = p->next;
	} while (p != this);
}
void list::printname(int key)
{
	if (pre == NULL)return;
	list *p = this;
	do
	{
		if (p->name == key)
		{
			printf("ѧ��Ϊ%d��ѧ���ɼ�Ϊ:%d\n", p->name, p->score);
			return;
		}
		p = p->next;
	} while (p != this);
	printf("û�в��ҵ����ϵ�ѧ����\n");
}
void list::printscore(int key)
{
	if (pre == NULL)return;
	list *p = this;
	do
	{
		if (p->score == key)
		{
			printf("ѧ��Ϊ%d��ѧ���ɼ�Ϊ:%d\n", p->name, p->score);
		}
		p = p->next;
	} while (p != this);
	printf("û�в��ҵ����ϵ�ѧ����\n");
}