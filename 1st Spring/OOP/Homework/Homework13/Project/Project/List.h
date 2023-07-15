#ifndef STUDENTMANAGER_H
#define STUDENTMANAGER_H

#include<iostream>

class CList
{
public:
	virtual void printlist() = 0;
};

class CStudentList:public CList
{
public:
	CStudentList *next, *pre;
	int name,score;
public:
	CStudentList() :name(0),score(0), next(NULL),pre(NULL) {}
	~CStudentList();
	void insert(int, int, CStudentList*);
	void printlist();
	CStudentList* deletename(int);
	CStudentList* deletescore(int);
	void printname(int);
	void printscore(int);
};

#endif