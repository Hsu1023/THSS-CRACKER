#ifndef TREE_H
#define TREE_H

#include "pch.h"
#include "Circle.h"
#include "Rectangle.h"
#include "Triangle.h"

class tree {
private:
	circle m_circle1, m_circle2, m_circle3;
	rectangle m_rectangle;
	triangle m_triangle1, m_triangle2, m_triangle3;
public:
	void Draw(CDC *pDC);
};

#endif