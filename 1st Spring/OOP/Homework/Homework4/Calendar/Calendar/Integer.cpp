#include<iostream>
#include"Integer.h"

using namespace std;

void integer::read()
{
	int x = 0, f = 1;char ch = getchar();
	while (!isdigit(ch))f = ch == '-' ? -1 : 1, ch = getchar();
	while (isdigit(ch))x = x * 10 + ch - '0', ch = getchar();
	num = x * f;
}