#ifndef TRITANGLE_H
#define TRITANGLE_H

#include "pch.h"

class triangle {
private:
	int x, y, l, h;
public:
	triangle(int xx = 0, int yy = 0, int ll = 0, int hh = 0) :
		x(xx), y(yy), l(ll), h(hh) {}
	~triangle() {}
	void Draw(CDC *);
	void Set(int, int, int, int);
};


#endif