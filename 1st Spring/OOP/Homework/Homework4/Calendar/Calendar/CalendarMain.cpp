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
		cout << "������ָ���ţ�0-�˳���1-�ָ�����ǰʱ�䣬2-����ʱ�䣬3-��������"<<endl;
		integer temp;
		temp.read();
		if (temp.num == 0) { cout << "��лʹ�ã��ټ�!" << endl; break; }
		else if (temp.num == 1)date.init();
		else if (temp.num == 2)
		{
			cout << "��������Ҫ���õ�ʱ�䣬��ʽ:yy/mm/dd(����Ԫǰ�����븺��)" << endl;
			temp.read();
			if (temp.num == 0) { cout << "�����������������"; continue; }
			date.yy = temp.num;
			temp.read();
			if(temp.num<=0||temp.num>=13) { cout << "�����������������"; continue; }
			date.mm = temp.num;
			temp.read();
			if (temp.num <=0 || temp.num >date.data_[date.mm]) { cout << "�����������������"; continue; }
			date.dd = temp.num;
		}
		else if (temp.num == 3)
		{
			cout << "��������Ҫ��ѯ������" << endl;
			temp.read();
			date.cal(temp.num);
		}
		else cout << "�����������������";
	}
}