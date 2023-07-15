#include"Calendar.h"
#include<iostream>
#include<ctime>
using namespace std;

void calendar::set(int y,int m,int d)
{
	yy = y;
	mm = m;
	dd = d;
}
void calendar::cal(int xx)
{
	int x = xx;
	calendar temp = (*this);
	while(x > 0)
	{
		int *array = data;
		if (temp.yy % 172800==0)array = data_;
		else if (temp.yy % 3200 == 0)array = data;
		else if (temp.yy % 400 == 0)array = data_;
		else if (temp.yy % 100 == 0)array = data;
		else if (temp.yy % 4 == 0)array = data_;
		if (array[temp.mm] - temp.dd < x)
		{
			x -= (array[temp.mm] - temp.dd + 1);
			temp.mm++;
			if (temp.mm > 12)temp.mm = 1, temp.yy++;
			if (temp.yy == 0)temp.yy++;
			temp.dd = 1;
		}
		else temp.dd += x,x=0;
	}
	while(x < 0)
	{
		int *array = data;
		int y = temp.yy;
		if (y < 0)y = -y - 1;
		if (y > 0)
		{
			if (y % 172800 == 0)array = data_;
			else if (y % 3200 == 0)array = data;
			else if (y % 400 == 0)array = data_;
			else if (y % 100 == 0)array = data;
			else if (y % 4 == 0)array = data_;
		}
		if (temp.dd <= -x)
		{
			x += temp.dd;
			temp.mm--;
			if (temp.mm <1)temp.mm = 12, temp.yy--;
			if (temp.yy == 0)temp.yy--;
			temp.dd = array[temp.mm];
		}
		else temp.dd += x,x=0;
	}
	if (temp.yy > 0)cout << "您查询的日期为：公元" << temp.yy << "年" << temp.mm << "月" << temp.dd << "日." << endl;
	if (temp.yy < 0)cout << "您查询的日期为：公元前" << -temp.yy << "年" << temp.mm << "月" << temp.dd << "日." << endl;
}
void calendar::init()
{
	time_t now;
	struct tm tim;
	time(&now);
	localtime_s(&tim,&now);
	yy = 1900 + tim.tm_year;
	mm = 1 + tim.tm_mon;
	dd = tim.tm_mday;
}