#include<time.h>
#include<iostream>
#include"Integer.h"
#include"Calendar.h"
#include"CalendarMain.h"

using namespace std;

void calendarmain::run()
{
	while (true)
	{
		cout << "请输入指令编号：0-退出，1-恢复至当前时间，2-设置时间，3-计算日期"<<endl;
		integer temp;
		temp.read();
		if (temp.num == 0) { cout << "感谢使用，再见!" << endl; break; }
		else if (temp.num == 1)date.init();
		else if (temp.num == 2)
		{
			cout << "请输入需要设置的时间，格式:yy/mm/dd(若公元前则输入负数)" << endl;
			temp.read();
			if (temp.num == 0) { cout << "输入错误，请重新输入"; continue; }
			date.yy = temp.num;
			temp.read();
			if(temp.num<=0||temp.num>=13) { cout << "输入错误，请重新输入"; continue; }
			date.mm = temp.num;
			temp.read();
			if (temp.num <=0 || temp.num >date.data_[date.mm]) { cout << "输入错误，请重新输入"; continue; }
			date.dd = temp.num;
		}
		else if (temp.num == 3)
		{
			cout << "请输入需要查询的天数" << endl;
			temp.read();
			date.cal(temp.num);
		}
		else cout << "输入错误，请重新输入";
	}
}