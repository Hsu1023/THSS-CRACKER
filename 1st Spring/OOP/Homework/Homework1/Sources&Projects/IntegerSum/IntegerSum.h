#ifndef INTEGERSUM_H
#define INTEGERSUM_H

class SolveIntegerSum
{
public:
	int inputnum;
	int result1,result2;
	bool inputerror;
public:
	SolveIntegerSum():	inputnum(0),result1(0),result2(0),inputerror(0){}
	~SolveIntegerSum()	{}
	int GetInputNumber();
	int GetResult1();
	int GetResult2();
};




#endif