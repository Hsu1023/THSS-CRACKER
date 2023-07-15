#ifndef LIST_H
#define LIST_H
#include<iostream>

class list
{
public:
	list *next, *pre;
	int name, score;
public:
	list():next(NULL),pre(NULL),name(0),score(0){}
	~list();
	void insert(int, int);
	void printlist();
	void deletename(int);
	void deletescore(int);
	void printname(int);
	void printscore(int);
};

#endif