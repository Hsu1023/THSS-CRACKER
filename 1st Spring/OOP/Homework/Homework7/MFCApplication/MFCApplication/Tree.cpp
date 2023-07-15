#include "pch.h"
#include "Tree.h"

void tree::Draw(CDC *pDC)
{
	m_triangle1.Set(500, 50, 300, 80);
	m_triangle2.Set(500, 130, 300, 80);
	m_triangle3.Set(500, 210, 300, 80);
	m_circle1.Set(450, 105, 10);
	m_circle2.Set(550, 185, 10);
	m_circle3.Set(450, 265, 10);
	m_rectangle.Set(475, 290, 525, 410);

	m_triangle1.Draw(pDC);
	m_triangle2.Draw(pDC);
	m_triangle3.Draw(pDC);
	m_circle1.Draw(pDC);
	m_circle2.Draw(pDC);
	m_circle3.Draw(pDC);
	m_rectangle.Draw(pDC);
}