#include<iostream>
using namespace std;
#include"CP_Time.h"

double CP_Time::mb_getstart()
{
	clock_t temp = clock();
	time_start=(double)temp / 1000;
	return time_start;
}
double CP_Time::mb_getend()
{
	clock_t temp = clock();
	time_end = (double)temp / 1000;
	return time_end;
}
double CP_Time::mb_getduration()
{
	duration = time_end - time_start;
	return duration;
}
void CP_Time::mb_report()
{
	if(duration>1000)
		cout << "���иü��㻨�ѵ�ʱ����:" << (double)duration/1000 << "��." << endl;
	else 
		cout << "���иü��㻨�ѵ�ʱ����:" << duration << "����." << endl;
}