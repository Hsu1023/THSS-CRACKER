#include"database.h"
#include<map>
#include<iostream>
#include<fstream>
using namespace std;

void CDatabase::clear()
{
	data.clear();
}
void CDatabase::show()
{
	for (map<int, int>::iterator it = data.begin(); it != data.end(); it++)
	{
		cout << it->first << ' ' << it->second << endl;
	}
}
void CDatabase::insert(int student, int grade)
{
	data[student] = grade;
}
void CDatabase::change(int student, int grade)
{
	data[student] = grade;
}
void CDatabase::erase(int student)
{
	map<int, int>::iterator it = data.find(student);
	data.erase(it);
}
void CDatabase::inquery(int student)
{
	cout << data[student] << endl;
}