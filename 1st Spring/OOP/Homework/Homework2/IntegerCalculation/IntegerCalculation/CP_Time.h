#ifndef CP_TIME_H
#define CP_TIME_H

#include<ctime>

class CP_Time 
{
private:
	clock_t time_start,time_end,duration;
public:
	CP_Time():time_start(0.0),time_end(0.0),duration(0.0){}
	~CP_Time(){}
	double mb_getstart();
	double mb_getend();
	double mb_getduration();
	void mb_report();
};

#endif
