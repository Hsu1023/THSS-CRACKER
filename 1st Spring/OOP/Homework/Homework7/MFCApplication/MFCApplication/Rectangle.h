#ifndef RECTANGLE_H
#define RECTANGLE_H

#include"pch.h"

class rectangle {
private:
	int x1, y1, x2, y2;
public:
	rectangle(int xx1 = 0, int yy1 = 0, int xx2 = 0, int yy2 = 0) :
		x1(xx1), x2(xx2), y1(yy1), y2(yy2) {}
	~rectangle() {}
	void Draw(CDC *);
	void Set(int, int, int, int);
};

#endif