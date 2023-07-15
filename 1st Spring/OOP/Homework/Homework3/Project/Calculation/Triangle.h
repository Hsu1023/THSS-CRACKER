#ifndef TRIANGLE_H
#define TRIANGLE_H

class Triangle
{
public:
	double area,length,edge;
public:
	Triangle() :area(0.0), length(0.0) {}
	int input();
	void calculate();
	void report();
};

#endif