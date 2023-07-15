#ifndef HEXAGON_H
#define HEXAGON_H

class Hexagon
{
public:
	double area,length,edge;
public:
	Hexagon() :area(0.0), length(0.0),edge(0.0) {}
	int input();
	void calculate();
	void report();
};

#endif