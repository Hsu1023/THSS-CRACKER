#ifndef FACTORYLISH_H
#define FACTORYLISH_H
#include "List.h"
#include<iostream>

class CFactoryListInterface
{
public:
	virtual ~CFactoryListInterface() {};
	virtual CStudentList* CreateInstance() = 0;
};

class CFactoryList :public CFactoryListInterface
{
public:
	CStudentList* node;
public:
	~CFactoryList();
	CStudentList* CreateInstance();
	void RecycleInstance(CStudentList*);
};

#endif