#ifndef SQUARE_H
#define SQUARE_H

class Square
{
public:
	double length,edge,area;
public:
	Square() :area(0.0), length(0.0),edge(0.0) {}
	int input();
	void calculate();
	void report();
};

#endif