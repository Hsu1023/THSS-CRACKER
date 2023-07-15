#include "List.h"
#include<iostream>

using namespace std;

CStudentList::~CStudentList()
{
	if (next == NULL)return;
	pre->next = NULL;
	delete next;
}
//pre==NULL �޽ڵ�
//pre==this һ���ڵ�
void CStudentList::insert(int newname, int newscore,CStudentList *newnode)
{
	if (pre == NULL) {//�������޽ڵ�
		name = newname;
		score = newscore;
		pre = next = this;
		return;
	}
	CStudentList *p = this;
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
CStudentList* CStudentList::deletename(int key)
{
	if (pre == NULL)return NULL;
	CStudentList *p = this;
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
					return NULL;
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
				
				return p;
			}
		}
		p = p->next;
	} while (p != this);
	return NULL;
}
CStudentList* CStudentList::deletescore(int key)
{
	if (pre == NULL)return NULL;
	CStudentList *p = this;
	do
	{
		if (p->score == key)//ɾ������ͷ���
		{
			if (p == this)//ֻ��һ���ڵ�
			{
				if (p->pre == this)
				{
					score = 0;
					name = 0;
					pre = NULL;
					return NULL;
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

				return p;
			}
		}
		p = p->next;
	} while (p != this);
	return NULL;
}
void CStudentList::printlist()
{
	CStudentList *p = this;
	if (pre == NULL) {
		printf("ϵͳ����ѧ��!\n");
		return;
	}
	do
	{
		printf("ѧ��%d��ѧ���ɼ�Ϊ: %d\n", p->name, p->score);
		p = p->next;
	} while (p != this);
}
void CStudentList::printname(int key)
{
	if (pre == NULL)return;
	CStudentList *p = this;
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
void CStudentList::printscore(int key)
{
	if (pre == NULL)return;
	CStudentList *p = this;
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
