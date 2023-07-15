#ifndef CP_TIMEAPPLICATION_H
#define CP_TIMEAPPLICATION_H

#include"CP_IntegerInput.h"
#include"CP_Time.h"
#include"CP_LCMGCDCalculation.h"

class CP_TimeApplication
{
public:
	CP_IntegerInput data1, data2;
	CP_Time time1, time2;
	CP_LCMGCDCalculation cal;
public:
	CP_TimeApplication(){}
	~CP_TimeApplication(){}
	void mb_solve();
};

#endif