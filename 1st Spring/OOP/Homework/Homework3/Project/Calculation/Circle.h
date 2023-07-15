#ifndef CIRCLE_H
#define CIRCLE_H

class Circle 
{
public:
	double area,length,radius;
public:
	Circle():area(0.0),length(0.0),radius(0.0){}
	int input();
	void calculate();
	void report();
};

#endif