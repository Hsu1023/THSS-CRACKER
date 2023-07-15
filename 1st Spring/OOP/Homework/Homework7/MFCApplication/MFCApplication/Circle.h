#ifndef CIRCLE_H
#define CIRCLE_H

#include "pch.h"

class circle {
public:
	int x, y, r;
public:
	circle(int xx = 0, int yy = 0, int rr = 0) :x(xx), y(yy), r(rr) {}
	~circle() {}
	void Draw(CDC *);
	void Set(int, int, int);
	void PrintPosition();
};

#endif