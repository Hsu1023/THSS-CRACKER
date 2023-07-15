#include<iostream>
using namespace std;
#include"CP_TimeApplication.h"

void CP_TimeApplication::mb_solve()
{
	data1.mb_getinputnumber();
	if (data1.inputerror | data2.inputerror)return;
	data2.mb_getinputnumber();
	if (data1.inputerror | data2.inputerror)return;

	time1.mb_getstart();
	cal.mb_getgcd(data1.inputnum,data2.inputnum);
	cal.mb_gcdreport();
	time1.mb_getend();
	time1.mb_getduration();
	time1.mb_report();

	time2.mb_getstart();
	cal.mb_getlcm(data1.inputnum, data2.inputnum);
	cal.mb_lcmreport();
	time2.mb_getend();
	time2.mb_getduration();
	if(cal.lcmerror==0)
		time2.mb_report();
}