#ifndef CP_LCMGCDCALCULATION_H
#define CP_LCMGCDCALCULATION_H

class CP_LCMGCDCalculation
{
public:
	int num1,num2,lcm,gcd;
	bool lcmerror;
public:
	CP_LCMGCDCalculation() :lcm(0), gcd(0),num1(0),num2(0),lcmerror(0){}
	~CP_LCMGCDCalculation() {}
	int mb_getgcd(int, int);
	int mb_getlcm(int, int);
	void mb_gcdreport();
	void mb_lcmreport();
};

#endif