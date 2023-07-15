#include"Input.h"
#include<iostream>
#include<limits.h>

using namespace std;

void CInput::read()
{
	getline(cin, str);
}
int CInput::judge()
{
	int x = 0, f = 1;
	int p = 0;
	int len = str.length() - 1;
	if (!isdigit(str[p]))
	{
		if (str[p] == '-')f = -1;
		else
		{
			if (str[p] == '.')throw DOT;
			throw LETTER;
		}
		p++;
	}
	do
	{
		if (isdigit(str[p]))
		{
			if (10LL * x + str[p] - '0' > INT_MAX || (10LL * x + str[p] - '0')*f < INT_MIN)throw OVERF;
			x = 10 * x + str[p] - '0';
		}
		else
		{
			if (str[p] == '.')throw DOT;
			if (str[p] == '-')throw MINUS;
			if (str[p] == ' ')throw SPACE;
			throw LETTER;
		}
		p++;
	} while (p <= len);
	return x * f;
}