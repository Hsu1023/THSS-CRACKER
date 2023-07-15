#include"Longnumber.h"
#include<iostream>
#include<cstdlib>
#include<cstdio>
#include<string>
using namespace std;

int max(int x, int y) { return x > y ? x : y; }

CLongnumber CLongnumber:: operator + (const CLongnumber& x) const
{
	CLongnumber res;
	if (!(negative^x.negative)) {//两数同号
		res.length = max(length, x.length);
		res.data.resize(res.length + 1);
		res.negative = negative;
	for (int i = 0; i < res.length; i++) {
		res.data[i] += (i >= length  ? 0 : data[i]) + (i >= x.length  ? 0 : x.data[i]);
			if (res.data[i] >= 10)res.data[i + 1] += res.data[i]/10, res.data[i] %= 10;
		}
		if (res.data[res.length])res.length++;
		else res.data.pop_back();
		return res;
	}
	else if (negative) {
		res = (*this);
		res.negative = false;
		return x - res;
	}
	else {
		res = x;
		res.negative = false;
		return (*this) - res;
	}
}
CLongnumber CLongnumber:: operator - (const CLongnumber& x) const
{
	CLongnumber res;
	if (!(negative^x.negative)) {//两数同号
		res.length = max(length, x.length);
		res.data.resize(res.length+1);
		int cmp = (*this < x) ? -1 : 1;
		for (int i = 0; i < res.length; i++) {
			res.data[i] += cmp * (i >= length  ? 0 : data[i]) - cmp * (i >= x.length  ? 0 : x.data[i]);
			if (res.data[i] < 0)
			{
				res.data[i + 1] += (res.data[i] - 10) / 10;
				while (res.data[i] < 0) res.data[i] = (res.data[i] + 10) % 10;
			}
		}
		for (int i = res.length ; i > 0; i--)
			if (res.data[i] == 0)res.data.pop_back();
			else break;
		res.length = res.data.size();
		res.negative = (cmp == 1 ? 0 : 1) ^ negative;
		return res;
	}
	else if (negative) {
		CLongnumber temp1=(*this), temp2=x;
		temp1.negative = temp2.negative = true;
		return temp1 + temp2;
	}
	else {
		CLongnumber temp1 = (*this), temp2 = x;
		temp1.negative = temp2.negative = false;
		return temp1 + temp2;
	}
}
bool CLongnumber:: operator < (const CLongnumber& x) const
{

	bool flag = length < x.length;
	if (length == x.length)
		for (int i = length - 1; i >= 0; i--) {
			if (data[i] != x.data[i]) {
				flag = data[i] < x.data[i];
				break;
			}
			if (i == 0)return 0;
		}
	return flag;
}
ostream& operator << (ostream& os, const CLongnumber &x)
{
	if (x.negative)putchar('-');
	for (int i = x.length - 1; i >= 0; i--)cout << x.data[i];
	return os;
}
istream& operator >> (istream& is, CLongnumber & x)
{
	string temp;
	cin >> temp;
	x.length = temp.length();
	x.negative = x.error = false;
	x.data.clear();
	for (int i = 0; i < temp.length(); i++) 
	{
		
		if (!isdigit(temp[i]))
		{
			if (i == 0 && temp[i]=='-')x.negative = true, x.length--;
			else x.error = true;
		}
		else x.data.push_back(temp[i] - '0');
	}
	if (x.error)return is;
	for (int i = 0; i < x.length / 2; i++)
		swap(x.data[i], x.data[x.length - i -1]);
	return is;
}