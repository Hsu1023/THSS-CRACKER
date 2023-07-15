#ifndef COMPLEX_H
#define COMPLEX_H
#include<iostream>
using namespace std;
class complex
{
public:
	double re, im;
public:
	complex():re(0.0),im(0.0){}
	~complex(){}
	void repo();
	complex operator + (const complex a)const;
	complex operator - (const complex a)const;
	complex operator * (const complex a)const;
	complex operator / (const complex a)const;
	complex& operator +=(const complex a);
	complex& operator -=(const complex a);
	complex& operator *=(const complex a);
	complex& operator /=(const complex a);
	complex& operator ++();
	complex operator ++(int);
	complex& operator --();
	complex operator --(int); 
};
extern ostream& operator<<(ostream&, const complex&);
extern istream& operator>>(istream&, complex&);
#endif