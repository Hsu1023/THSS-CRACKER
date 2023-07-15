#ifndef LONGNUMBER_H
#define LONGNUMBER_H

#include<vector>
#include<iostream>
using namespace std;

class CLongnumber {
public:
	vector<int>data;
	int length;
	bool error;
	bool negative;
public:
	CLongnumber() :length(0), error(0) {}
	CLongnumber operator + (const CLongnumber&) const;
	CLongnumber operator - (const CLongnumber&) const;
	bool operator < (const CLongnumber&) const;
};
extern ostream& operator << (ostream&, const CLongnumber &);
extern istream& operator >> (istream&, CLongnumber &);

#endif