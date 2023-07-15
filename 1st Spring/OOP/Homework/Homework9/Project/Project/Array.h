#ifndef ARRAY_H
#define ARRAY_H

#include<set>
#include<vector>
#include<algorithm>
#include<iostream>
using namespace std;

class Carray
{
private:
	vector <int> v;
	set <int> s;
public:
	void m_input();
	void m_sort();
	void m_set();
};

#endif