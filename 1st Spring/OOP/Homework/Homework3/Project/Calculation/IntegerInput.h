#ifndef INTEGERINPUT_H
#define INTEGERINPUT_H

class IntegerInput
{
public:
	int inputnum;
	bool inputerror;
public:
	IntegerInput() : inputnum(0), inputerror(0) {}
	~IntegerInput() {}
	int read();
};

#endif