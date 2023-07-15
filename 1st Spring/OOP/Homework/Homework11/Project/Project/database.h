#ifndef DATABASE_H
#define DATABASE_H
#include<map>
#include<fstream>
class CDatabase
{
public:
	std::map<int,int> data;
public:
	CDatabase(){}
	~CDatabase(){}
	void clear();
	void insert(int, int);
	void erase(int);
	void change(int, int);
	void inquery(int);
	void show();
};

#endif