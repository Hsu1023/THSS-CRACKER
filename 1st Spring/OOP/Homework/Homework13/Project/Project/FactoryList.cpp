#include "List.h"
#include "FactoryList.h"
#include<iostream>

using namespace std;

CFactoryList::~CFactoryList()
{
	if (node == NULL)return;
	delete node;
}

CStudentList* CFactoryList::CreateInstance()
{
	if (node == NULL)return new CStudentList;//没有点
	if (node->pre == node)//1个点
	{
		CStudentList* temp = node;
		node = NULL;
		temp->pre = temp->next = NULL;
		temp->name = temp->score = 0;
		return temp;
	}//多个点
	CStudentList* temp = node;
	node = temp->next;
	node->pre = temp->pre;
	node->pre->next = node;
	temp->pre = temp->next = NULL;
	temp->name = temp->score = 0;
	return temp;
}

void CFactoryList::RecycleInstance(CStudentList* newnode)
{
	if (newnode == NULL)return;
	if (node == NULL)
	{
		node = newnode;
		node->pre = node->next = node;
		return;
	}
	node->pre->next = newnode;
	newnode->pre = node->pre;
	node->pre = newnode;
	newnode->next = node;
}
