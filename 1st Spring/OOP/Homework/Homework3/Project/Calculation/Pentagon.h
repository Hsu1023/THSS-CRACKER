#ifndef PENTAGON_H
#define PENTAGON_H

class Pentagon
{
public:
	double area,length,edge;
public:
	Pentagon() :area(0.0), length(0.0),edge(0.0) {}
	int input();
	void calculate();
	void report();
};

#endif