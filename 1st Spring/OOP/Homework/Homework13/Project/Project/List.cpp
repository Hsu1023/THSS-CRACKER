#include "List.h"
#include<iostream>

using namespace std;

CStudentList::~CStudentList()
{
	if (next == NULL)return;
	pre->next = NULL;
	delete next;
}
//pre==NULL 无节点
//pre==this 一个节点
void CStudentList::insert(int newname, int newscore,CStudentList *newnode)
{
	if (pre == NULL) {//链表中无节点
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
			if (p == this)//作为头结点
			{
				swap(newname, name);
				swap(newscore, score);
			}
			else//插入中间结点
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
	//插入尾节点
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
		if (p->name == key)//删掉的是头结点
		{
			if (p == this)//只有一个节点
			{
				if (p->pre == this)
				{
					score = 0;
					name = 0;
					pre = NULL;
					return NULL;
				}
				else //多个节点
				{
					swap(name, next->name);
					swap(score, next->score);
				}
			}
			else//删掉的是中间结点
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
		if (p->score == key)//删掉的是头结点
		{
			if (p == this)//只有一个节点
			{
				if (p->pre == this)
				{
					score = 0;
					name = 0;
					pre = NULL;
					return NULL;
				}
				else //多个节点
				{
					swap(name, next->name);
					swap(score, next->score);
				}
			}
			else//删掉的是中间结点
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
		printf("系统中无学生!\n");
		return;
	}
	do
	{
		printf("学号%d的学生成绩为: %d\n", p->name, p->score);
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
			printf("学号为%d的学生成绩为:%d\n", p->name, p->score);
			return;
		}
		p = p->next;
	} while (p != this);
	printf("没有查找到符合的学生！\n");
}
void CStudentList::printscore(int key)
{
	if (pre == NULL)return;
	CStudentList *p = this;
	do
	{
		if (p->score == key)
		{
			printf("学号为%d的学生成绩为:%d\n", p->name, p->score);
		}
		p = p->next;
	} while (p != this);
	printf("没有查找到符合的学生！\n");
}
