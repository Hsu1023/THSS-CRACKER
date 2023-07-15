#ifndef CP_INTEGERINPUT_H
#define CP_INTEGERINPUT_H

class CP_IntegerInput
{
public:
	int inputnum;
	bool inputerror;
public:
	CP_IntegerInput():	inputnum(0),inputerror(0){}
	~CP_IntegerInput()	{}
	int mb_getinputnumber();
};




#endif