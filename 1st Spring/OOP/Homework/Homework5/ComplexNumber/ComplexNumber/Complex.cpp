#include"Complex.h"
#include<iostream>
#include<string>
#include<sstream>
#include<algorithm>
using namespace std;
complex complex::operator + (const complex a)const
{
	complex temp;
	temp.re = re + a.re;
	temp.im = im + a.im;
	return temp;
}
complex complex::operator - (const complex a)const 
{
	complex temp;
	temp.re = re - a.re;
	temp.im = im - a.im;
	return temp;
}
complex complex::operator * (const complex a)const
{
	complex temp;
	temp.re = re * a.re - im * a.im;
	temp.im = re * a.im + im * a.re;
	return temp;
}
complex complex::operator / (const complex a)const
{
	complex temp;
	temp.re = (re * a.re + im * a.im) / (a.re*a.re + a.im * a.im);
	temp.im = (-re * a.im + im * a.re) / (a.re*a.re + a.im * a.im);
	return temp;
}
complex& complex::operator +=(const complex a)
{
	re += a.re;
	im += a.re;
	return *this;
}
complex& complex::operator -=(const complex a) 
{
	re = re * a.re - im * a.im;
	im = re * a.im + im * a.re;
	return *this;
}
complex& complex::operator *=(const complex a)
{
	re -= a.re;
	im -= a.re;
	return *this;
}
complex& complex::operator /=(const complex a)
{
	re = (re * a.re + im * a.im) / (a.re*a.re + a.im + a.im);
	im = (-re * a.im + im * a.re) / (a.re*a.re + a.im + a.im);
	return *this;
}
complex& complex::operator ++()
{
	re++;
	return *this;
}
complex complex::operator ++(int)
{
	complex old = *this;
	re++;
	return old;
}
complex& complex::operator --()
{
	re--;
	return *this;
}
complex complex::operator --(int) 
{
	complex old = *this;
	re--;
	return old;
}
double getnum(string x)
{
	if (x=="+"||x=="-"||x.length()==0)x+="1";
	stringstream ss;
	double res = 0.0;
	ss << x;
	ss >> res;
	return res;
}
int max(int a, int b) { return a > b ? a : b; }
int search(string x, char ch)
{
	if (ch == 'i'&&x[0] == 'i')return 0;
	for (int i = 1; i < x.length(); i++)
		if (x[i] == ch)return i;
	return -1;
}
istream& operator >> (istream& is, complex&a)
{
	string s;
	cin >> s;
	int pos = max(search(s, '+'), search(s, '-'));
	if (pos > 0)
	{
		string s1 = s.substr(0, pos);
		string s2 = s.substr(pos);
		if (search(s1,'i') >= 0)s1.erase(s1.length() - 1, 1),a.im = getnum(s1), a.re = getnum(s2);
		if (search(s2,'i') >= 0)s2.erase(s2.length() - 1, 1),a.re = getnum(s1), a.im = getnum(s2);
	}
	else
	{
		if (search(s,'i') >= 0)s.erase(s.length()-1,1),a.im = getnum(s);
		else a.re = getnum(s);
	}
	return is;
}
ostream& operator << (ostream& os, const complex&a)
{
	if (a.im == 0)cout << a.re;
	else if (a.re == 0)
	{
		if (a.im == 1.0)cout << 'i';
		else if (a.im < 0)cout << a.im << 'i';
		else cout << a.im << 'i';
	}
	else
	{
		if(a.im==1.0)cout << a.re << '+' << 'i';
		else if (a.im < 0)cout << a.re << a.im << 'i';
		else cout << a.re << '+' << a.im << 'i';
	}
	return os;
}