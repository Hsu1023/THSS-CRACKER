#include<iostream>
using namespace std;
#include<climits>
#include"CP_LCMGCDCalculation.h"

int CP_LCMGCDCalculation::mb_getgcd(int a, int b)
{
	if (b == 0)return gcd=a;
	return mb_getgcd(b, a%b);
}
int CP_LCMGCDCalculation::mb_getlcm(int a, int b)
{
	mb_getgcd(a,b);
	if ((double)a/gcd*b > (double)INT_MAX)
	{
		lcmerror = true;
		return -1;
	}
	lcm = a /gcd*b;
}
void CP_LCMGCDCalculation::mb_gcdreport()
{
	cout << "�����������Լ��Ϊ��" << gcd<<endl;
}
void CP_LCMGCDCalculation::mb_lcmreport()
{
	if (lcmerror)
		cout << "����������С�������������㷶Χ���޷���������" << endl;
	else 
		cout << "����������С������Ϊ��" << lcm << endl;
}